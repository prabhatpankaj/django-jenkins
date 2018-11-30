#!groovy

node {

    try {
        stage 'Checkout'
            checkout scm

        stage 'Test'
            sh 'virtualenv env -p python3'
            sh '. env/bin/activate'
            sh 'env/bin/pip install -r requirements.txt'
            sh 'env/bin/python3 manage.py test --settings=config.settings.development --testrunner=tests.test_runners.NoDbTestRunner'

        stage 'Deploy'
            sh './bin/deploy_prod.sh'
    }

    catch (err) {
        throw err
    }

}
