package si.tristanv.finance.impls;

import jakarta.enterprise.context.ApplicationScoped;
import si.tristanv.finance.dtos.ExpenseDto;
import si.tristanv.finance.api.resources.ExpenseResource;

@ApplicationScoped
public class ExpenseResourceImpl implements ExpenseResource
{
    @Override
    public Integer addExpense(ExpenseDto expenseDto)
    {
        return 0;
    }
}
