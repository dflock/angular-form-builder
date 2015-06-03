angular.module 'builder', ['builder.directive']
    .run ($validator) ->
        $validator.register('text', {
                invoke: 'watch'
                validator: (value, scope, element, attrs, $injector) ->
                    val = value || ''
                    scope.minLength is 0 || (val.length >= scope.minLength && val.length <= scope.maxLength)
            })
        $validator.register('numberRange', {
                invoke: 'watch'
                validator: (value, scope, element, attrs, $injector) ->
                    value >= scope.minRange && value <= scope.maxRange
            })
