<script setup>
import { ref } from 'vue'
import { Form, Field, ErrorMessage } from 'vee-validate';
import * as yup from 'yup'
import moment from 'moment'

const onSubmit = (values) => {
    fetch("http://esx_identity/register", {
            method: "POST",
            body: JSON.stringify({
                firstname: values.firstname,
                lastname: values.lastname,
                dateofbirth: moment(values.dob).format("DD/MM/YYYY"),
                sex: values.gender,
                height: values.height,
            }),
        });
}

const schema = yup.object({
    firstname: yup.string().required('Le prénom est obligatoire').min(3, 'Le prénom doit comporter au moins 3 caractères'),
    lastname: yup.string().required('Le nom de famille est obligatoire').min(3, 'Le nom de famille doit comporter au moins 3 caractères'),
    dob: yup.date()
    .required('La date de naissance est requis')
    .min(new Date("1900-01-01"), "La date est trop courte")
    .max(moment().subtract(1, 'years').toDate(), "Vous devez avoir au moins 18 an"),
    gender: yup.string().required('Le sexe est requis'),
    height: yup.number().required('La hauteur est requise').min(120, 'La hauteur minimale est de 120 cm').max(220, 'La hauteur maximale est de 220 cm').typeError('Le montant doit être un nombre'),
})

</script>

<template>
    <div class="dialog">
        <div class="dialog__header">
            <h1>Next <span>Dev</span></h1>
        </div>
        <div class="dialog__body">
            <p class="dialog__body-hint">Commencez par créer votre identité</p>
            <Form class="dialog__body-form" id="register" action="#" novalidate @submit="onSubmit" :validation-schema="schema">
                <div class="dialog__form-group">
                    <label for="firstname">Prénom</label>
                    <div class="dialog__form-validation">
                        <Field id="firstname" type="text" name="firstname" placeholder="Firstname" validateOnInput />
                    </div>
                    <ErrorMessage name="firstname" class="dialog__form-message dialog__form-message--error" />
                </div>
                <div class="dialog__form-group">
                    <label for="lastname">Nom de famille</label>
                    <div class="dialog__form-validation">
                        <Field id="lastname" type="text" name="lastname" placeholder="Lastname" validateOnInput />
                    </div>
                    <ErrorMessage name="lastname" class="dialog__form-message dialog__form-message--error" />
                </div>
                <div class="dialog__form-group">
                    <label for="dob">Date de naissance</label>
                    <Field id="dob" type="date" name="dob" placeholder="dd/mm/yyyy" validateOnInput />
                    <ErrorMessage name="dob" class="dialog__form-message dialog__form-message--error" />
                </div>
                <div class="dialog__form-group">
                    <label for="gender">Genre</label>
                    <div class="dialog__form-group dialog__form-group--radio">
                        <div class="dialog__form-radio">
                            <Field type="radio" id="male" value="m" name="gender" validateOnInput />
                            <label for="male">
                                <i class="fas fa-mars"></i>Male
                            </label>
                        </div>
                        <div class="dialog__form-radio">
                            <Field type="radio" id="female" value="f" name="gender" validateOnInput />
                            <label for="female">
                                <i class="fas fa-venus"></i>Female
                            </label>
                        </div>
                    </div>
                    <ErrorMessage name="gender" class="dialog__form-message dialog__form-message--error" />
                </div>
                <div class="dialog__form-group">
                    <label for="height">Taille</label>
                    <Field id="height" type="text" name="height" placeholder="175" validateOnInput/>
                    <ErrorMessage name="height" class="dialog__form-message dialog__form-message--error" />
                </div>
                <button class="dialog__form-submit" id="submit" type="submit">
                    <i class="fas fa-user-plus"></i>CRÉER
                </button>
            </Form>
        </div>
    </div>
</template>

<style scoped>
</style>
