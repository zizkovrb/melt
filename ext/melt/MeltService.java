package org.zizkovrb.melt;

import java.io.IOException;

import org.jruby.Ruby;
import org.jruby.RubyClass;
import org.jruby.RubyModule;
import org.jruby.RubyObject;
import org.jruby.anno.JRubyMethod;
import org.jruby.runtime.ObjectAllocator;
import org.jruby.runtime.ThreadContext;
import org.jruby.runtime.builtin.IRubyObject;
import org.jruby.runtime.load.BasicLibraryService;

public class MeltService implements BasicLibraryService {
  private Ruby runtime;

  public boolean basicLoad(Ruby runtime) throws IOException {
    this.runtime = runtime;
    RubyModule melt = runtime.defineModule("Melt");

    RubyClass down = melt.defineClassUnder("Down", runtime.getObject(), new ObjectAllocator() {
      public IRubyObject allocate(Ruby runtime, RubyClass rubyClass) {
        return new MeltDown(runtime, rubyClass);
      }

    });

    down.defineAnnotatedMethods(MeltDown.class);
    return true;
  }

  public class MeltDown extends RubyObject {
    public MeltDown(final Ruby runtime, RubyClass rubyClass) {
      super(runtime, rubyClass);
    }

    @JRubyMethod
    public IRubyObject execute(ThreadContext context, IRubyObject target) {
      if(target.isFrozen()) {
        target.setFrozen(false);
      }
      return target;
    }
  }
}
