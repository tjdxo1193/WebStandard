<template>
  <div id="app">
    <GmapMap
      ref="mapRef"
      :center="center"
      :zoom="16"
      style="width: 100vw; height: 100vh"
      >
    </GmapMap>
  </div>
</template>

<script>
export default {
  name: "App",
  data(){
    return {
      //테스트 좌표 데이터
      center: {
        lat: 37.500131499999995,
        lng: 127.03242579999998,
      },
    };
  }
};
</script>

<style>
body {
  margin: 0;
  padding: 0;
}
</style>