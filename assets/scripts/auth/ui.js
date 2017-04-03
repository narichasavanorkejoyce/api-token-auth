'use strict'

const store = require('../store')

const signUpSuccess = (data) => {
  console.log(data)
}

const signUpFailure = (error) => {
  console.error(error)
}

const signInSuccess = (data) => {
  // A comma (instead of a +) will try to turn an object into a string
  // Then, we can see what is inside the object
  console.log('signInSuccess ran. Data is: ', data)
  store.user = data.user
}

const signInFailure = (error) => {
  console.error(error)
}

const signOutSuccess = (data) => {
  console.log('signOutSuccess ran. Data is :', data)
  // We want to clear the entire object once we sign-out
  store.user = null
  console.log('store is: ', store)
}

const signOutFailure = (error) => {
  console.error(error)
}

const changePasswordSuccess = (data) => {
  console.log('changePasswordSuccess ran. Data is :', data)
}

const changePasswordFailure = (error) => {
  console.error(error)
}

module.exports = {
  signUpSuccess,
  signUpFailure,
  signInSuccess,
  signInFailure,
  signOutSuccess,
  signOutFailure,
  changePasswordSuccess,
  changePasswordFailure
}
