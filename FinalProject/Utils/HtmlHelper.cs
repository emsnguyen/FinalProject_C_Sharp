using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FinalProject.Utils
{
    public class HtmlHelper
    {
        static string GenerateHyperlink(int value, string display)
        {
            string result = $"<a href = \"ViewOrders?page=${value}\">${display}</a>";
            return result;
        }
        static string Paging(int currentPage, int pageGap, int totalPage)
        {
            string result = "";
            if (currentPage > pageGap)
            {
                result += GenerateHyperlink(1, "First");
            }
            for (int i = Math.Max(1, currentPage - pageGap); i < currentPage; i++)
            {
                result += GenerateHyperlink(i, "" + i);
            }
            result += $"<a href = \"ViewOrders?page=${currentPage}\" class=\"currentPage\">${currentPage}</a>";
            for (int i = currentPage + 1; i < Math.Min(totalPage, currentPage + pageGap); i++)
            {
                result += GenerateHyperlink(i, "" + i);
            }
            if (currentPage + pageGap < totalPage)
            {
                result += GenerateHyperlink(totalPage, "Last");
            }
            return result;
        }
    }
}