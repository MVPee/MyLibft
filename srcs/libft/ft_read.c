/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_read.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mvpee <mvpee@19.be>                        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/19 14:15:11 by mvpee             #+#    #+#             */
/*   Updated: 2023/11/19 14:15:11 by mvpee            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../includes/libft.h"

char *ft_read(int fd)
{
    char	*line;
	char	*file;
	char	*temp;

    if (fd <= 0)
    {
        ft_printf_fd(2, "Error\nCannot read file.\n");
        return (NULL);
    }
    file = ft_strdup("");
    line = get_next_line(fd);
    if (!line)
	{
		free(file);
		ft_printf_fd(2, "Error\nEmpty map.\n");
        return (NULL);
	}
    while (line)
	{
		temp = file;
		file = ft_strjoin_free(temp, line);
		line = get_next_line(fd);
	}
    close(fd);
	return (file);
}
