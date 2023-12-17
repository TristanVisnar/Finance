package si.tristanv.finance.impls;

import jakarta.enterprise.context.ApplicationScoped;
import si.tristanv.finance.api.objects.expense.AddExpenseRequest;
import si.tristanv.finance.api.resources.ExpenseResource;

@ApplicationScoped
public class ExpenseResourceImpl implements ExpenseResource
{
    @Override
    public Integer addExpense(AddExpenseRequest addExpenseRequest)
    {
        return null;
    }
}
