/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstmap.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jhallama <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/11/06 12:17:54 by jhallama          #+#    #+#             */
/*   Updated: 2019/11/06 13:12:22 by jhallama         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstmap(t_list *lst, t_list *(*f)(t_list *elem))
{
	t_list	*new_lst;
	t_list	*head;

	if (lst)
	{
		new_lst = f(lst);
		head = new_lst;
		while (lst->next != NULL)
		{
			lst = lst->next;
			new_lst->next = f(lst);
			new_lst = new_lst->next;
		}
		return (head);
	}
	return (NULL);
}
