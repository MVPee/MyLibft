/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_splitlen.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mvpee <mvpee@19.be>                        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/19 11:46:45 by mvpee             #+#    #+#             */
/*   Updated: 2023/11/19 11:46:45 by mvpee            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../includes/libft.h"

size_t  ft_splitlen(const char **src)
{
    size_t i;

    i = 0;
    while(src[i])
        i++;
    return (i);
}
