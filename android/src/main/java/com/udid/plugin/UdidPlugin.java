package com.udid.plugin;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "Udid")
public class UdidPlugin extends Plugin {

    private Udid implementation;

    @Override
    public void load() {
        implementation = new Udid(getContext());
    }

    @PluginMethod
    public void getUdid(PluginCall call) {
        JSObject ret = new JSObject();
        ret.put("value", implementation.getUniqueId());
        call.resolve(ret);
    }
}
