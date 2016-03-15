/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strreplace.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tpayen <tpayen@studio.42.fr>               +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/03/12 17:14:05 by tpayen            #+#    #+#             */
/*   Updated: 2016/03/15 19:20:44 by tpayen           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>

char	*ft_strreplace(char *search, char *replace, char *s)
{
	char	*ret;
	char	*str;

	ret = NULL;
	if ((str = ft_strstr(s, search)) == NULL)
		return (NULL);
	str[0] = 0;
	ret = ft_strdup(s);
	ret = ft_strjoin(ret, replace);
	ret = ft_strjoin(ret, str + ft_strlen(search));
	if (ft_strstr(ret, search))
		ret = ft_strreplace(search, replace, ret);
	return (ret);
}
