/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstdnew.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tpayen <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/11/25 16:44:42 by tpayen            #+#    #+#             */
/*   Updated: 2016/11/25 17:53:47 by tpayen           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>

t_lstd	*ft_lstdnew(void const *content, size_t content_size)
{
	t_lstd	*ret;

	if (!(ret = (t_lstd *)malloc(sizeof(t_lstd))))
		return (NULL);
	if (content == NULL)
	{
		content_size = 0;
		ret->content = NULL;
	}
	else
	{
		if (!(ret->content = (void *)malloc(sizeof(content_size))))
			return (NULL);
		ft_memcpy(ret->content, content, content_size);
	}
	ret->content_size = content_size;
	ret->next = NULL;
	ret->prev = NULL;
	return (ret);
}
