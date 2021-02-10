/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_skip_atoi.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: wquenten <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/01/23 05:53:52 by wquenten          #+#    #+#             */
/*   Updated: 2021/01/23 06:30:19 by wquenten         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int			ft_skip_atoi(const char **s)
{
	int i;
	int sign;

	sign = 1;
	i = 0;
	while (ft_isspace(**s))
		(*s)++;
	if (**s == '+' || **s == '-')
	{
		if (**s == '-')
			sign = -1;
		(*s)++;
	}
	while (ft_isdigit(**s))
	{
		i = i * 10 + ft_ctod(**s);
		(*s)++;
	}
	return (i * sign);
}
