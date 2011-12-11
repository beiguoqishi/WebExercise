/**
 * Created by JetBrains WebStorm.
 * User: liupengtao
 * Date: 11-9-9
 * Time: 下午2:44
 * To change this template use File | Settings | File Templates.
 */
function maxSubsequenceSum(a) {
    var length = a.length,
        start = 0,
        end = 0,
        maxSum = 0,
        thisSum = 0;

    for (var i = 0; i < length; i++) {
        thisSum += a[i];

        if (thisSum > maxSum) {
            maxSum = thisSum;
            end = i;
        } else if (thisSum < 0) {
            thisSum = 0;
            start = i + 1;
        }
    }

    return maxSum;
}

alert('js')