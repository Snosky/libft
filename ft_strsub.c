/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strsub.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tpayen <tpayen@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/01/15 16:55:58 by tpayen            #+#    #+#             */
/*   Updated: 2015/01/20 16:24:59 by tpayen           ###   ########.fr       */
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
	if (!(ret = ft_strnew(len + 1)))
		return (NULL);
	while (len--)
	{
		ret[i] = s[start];
		start++;
		i++;
	}
	return (ret);
}
