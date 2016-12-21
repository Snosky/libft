/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstddelone.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tpayen <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/11/25 19:08:14 by tpayen            #+#    #+#             */
/*   Updated: 2016/12/20 00:35:59 by tpayen           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>

void	ft_lstddelone(t_lstd **alst, void (del)(void *, size_t size))
{
	t_lstd	*next;
	t_lstd	*prev;

	if (alst)
	{
		next = (*alst)->next;
		prev = (*alst)->prev;
		(*del)((*alst)->content, (*alst)->content_size);
		free(*alst);
		*alst = NULL;
		if (prev)
			prev->next = next;
		if (next)
			next->prev = prev;
	}
}
