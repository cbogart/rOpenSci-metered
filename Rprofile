

##BEGIN_ENABLE_SCIMAP
    options(defaultPackages=c(getOption("defaultPackages"),"scimapClient"));

    setHook(packageEvent("scimapClient", "onLoad"),
         function(libname, pkgname) {
              scimapClient:::enableTracking(randomID="3333338064420055548571274"); } );
    scimapClient:::setPacketDestination("128.237.202.95", 7778);
    scimapClient:::deanonymize("Chris Bogart", "http://chris.bogarthome.net", "http://chris.bogarthome.net");
##END_ENABLE_SCIMAP
