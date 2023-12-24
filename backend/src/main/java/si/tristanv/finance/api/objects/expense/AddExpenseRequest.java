package si.tristanv.finance.api.objects.expense;

import java.time.LocalDateTime;

public class AddExpenseRequest {
    LocalDateTime expenseTime;
    int cost;
    int userId;
    int subcategoryId;

}
