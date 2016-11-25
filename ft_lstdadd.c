/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstdadd.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tpayen <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/11/25 16:51:16 by tpayen            #+#    #+#             */
/*   Updated: 2016/11/25 17:27:51 by tpayen           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>

void	ft_lstdadd(t_lstd **alst, t_lstd *new)
{
	if (!*alst)
	{
		new->next = new;
		new->prev = new;
		*alst = new;
	}
	else
	{
		new->prev = (*alst)->prev;
		new->next = *alst;
		(*alst)->prev->next = new;
		(*alst)->prev = new;

	}
}
