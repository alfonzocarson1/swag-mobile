// ignore_for_file: constant_identifier_names

const createPaymentMethodUrl = 'https://api.stripe.com/v1/payment_methods';
const createCustomerUrl = 'https://api.stripe.com/v1/customers';
const attachPaymentMethodUrl = 'https://api.stripe.com/v1/payment_methods/';
const stripeApiKey = 'sk_test_4eC39HqLyjWDarjtT1zdp7dc';

// CARD ERRORS
const INVALID_CARD = 'incorrect_number';
const INVALID_EXPIRY_MONTH = "invalid_expiry_month";
const INVALID_EXPIRY_YEAR = 'invalid_expiry_year';
const INVALID_CVC = 'invalid_cvc';
