import "bootstrap";

import flatpickr from 'flatpickr';
import 'flatpickr/dist/flatpickr.min.css';

flatpickr(".datepicker", {});

import { tabDynamic } from '../components/tabs';
tabDynamic();

import { loadDynamicBannerText } from '../components/banner';

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();


import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

import { initAutocomplete } from '../plugins/init_autocomplete'

initAutocomplete();

if (document.getElementById('banner-typed-text')) {
  loadDynamicBannerText();
}

import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();
