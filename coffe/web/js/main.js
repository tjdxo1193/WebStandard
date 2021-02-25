import Vue from "vue";
import * as VueGoogleMaps from "vue2-google-maps";

Vue.use(VueGoogleMaps, {
    load: {
        key: "AIzaSyA1CCvsEeWN2zyvgcL8RGZ67905NDrwOgM",
        libraries: "places",
    },
});
