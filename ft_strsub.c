/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strsub.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tpayen <tpayen@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/01/15 16:55:58 by tpayen            #+#    #+#             */
/*   Updated: 2015/02/26 17:43:06 by tpayen           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strsub(char const *s, unsigned int start, size_t len)
{
	char	*ret;
	int		i;

	i = 0;
	if ((start + len) > ft_strlen(s))
		return (NULL);
	if (!(ret = ft_strnew(len)))
		return (NULL);
	while (len--)
	{
		ret[i] = s[start];
		start++;
		i++;
	}
	return (ret);
}
