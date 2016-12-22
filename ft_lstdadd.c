/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstdadd.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tpayen <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/11/25 16:51:16 by tpayen            #+#    #+#             */
/*   Updated: 2016/12/22 14:35:30 by tpayen           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>

void	ft_lstdadd(t_lstd **alst, t_lstd *new, int prev)
{
	if (!*alst)
		*alst = new;
	else
	{
		if (prev)
		{
			new->next = *alst;
			new->prev = (*alst)->prev;
			if ((*alst)->prev)
				(*alst)->prev->next = new;
			(*alst)->prev = new;
		}
		else
		{
			new->next = (*alst)->next;
			new->prev = *alst;
			if ((*alst)->next)
				(*alst)->next->next = new;
			(*alst)->next = new;
		}
	}
}
