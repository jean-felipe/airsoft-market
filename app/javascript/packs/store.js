import Vue from 'vue';

import Store from './components/Store/Store.vue';

const parseData = (prop) => {
  try {
    return JSON.parse(prop);
  } catch (e) {
    return prop;
  }
};

const init = () => {
  const element = document.getElementById('store');

  new Vue({
    el: element,
    // mixins: [turbolinksClassic],
    // store: storeFactory(),
    render: h => h(Store),
  });
  // if (element !== null) {
  //   const rawData = Object.assign({}, element.dataset);
  //
  //   const propsData = Object.keys(rawData).reduce((acc, prop) => {
  //     acc[prop] = parseData(rawData[prop]);
  //     return acc;
  //   }, {});
  //
  //   // eslint-disable-next-line no-new
  //   new Vue({
  //     el: element,
  //     render(h) {
  //       return h(Store, {
  //         props: propsData,
  //       });
  //     },
  //   });
  // }
};

['DOMContentLoaded', 'page:load', 'page:restore'].forEach((event) => {
  document.addEventListener(event, init);
});
