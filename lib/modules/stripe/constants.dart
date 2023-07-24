// ignore_for_file: constant_identifier_names

const createPaymentMethodUrl = 'https://api.stripe.com/v1/payment_methods';
const createCustomerUrl = 'https://api.stripe.com/v1/customers';
const attachPaymentMethodUrl = 'https://api.stripe.com/v1/payment_methods/';
const createCardTokenUrl = 'https://api.stripe.com/v1/tokens';
const stripeApiKey =
    'pk_test_51NG1gBKROefVddLbuxTuy6os1HXtQ2ebTozLzLnrnYphLErEzbol93Z6dGZhXRwWrQe1GGlNO54D9uq3aDrs36EG0048nf2QGb';
const paymentMethodAndType = 'payment_methods?type=card';
const addPaymentMethod =
    'http://orchestration.dev.swag.kuldisak.net:8080/api/v1/profile/settings/addPaymentMethod/';

// CARD ERRORS
const INVALID_CARD = 'incorrect_number';
const INVALID_EXPIRY_MONTH = "invalid_expiry_month";
const INVALID_EXPIRY_YEAR = 'invalid_expiry_year';
const INVALID_CVC = 'invalid_cvc';
