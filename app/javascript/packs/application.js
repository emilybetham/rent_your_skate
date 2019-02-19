import "bootstrap";

import flatpickr from 'flatpickr';
import 'flatpickr/dist/flatpickr.min.css';

flatpickr(".datepicker", {});

import { loadDynamicBannerText } from '../components/banner';
loadDynamicBannerText();
