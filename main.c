/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ler-rech <ler-rech@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/21 15:43:25 by ler-rech          #+#    #+#             */
/*   Updated: 2021/01/15 19:31:48 by ler-rech         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */


#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <stdio.h>
#include <fcntl.h>
#include <errno.h>



ssize_t		ft_write(int fd, void const *buf, size_t nbyte);
size_t		ft_strlen(char const *str);
char		*ft_strcpy(char *dst, char const *src);
int			ft_strcmp(char const *s1, char const *s2);
size_t		ft_read(int fd, void *buf, size_t nbyte);
char        *ft_strdup(char const *s1);



int main()
{


    
    // ************** ft_writ e**************
    // ft_write(1, "HELLO", 1);

    // ************** ft_strlen **************
    // printf(" %zu \n", ft_strlen("HELLO"));

    // ************** ft_strcpy **************
    // char *str1;
    // str1 = malloc(15);
    // ft_strcpy(str1, "test ft_strcpy");
    // printf(" %s \n", str1);

    // ************** ft_strcpy **************
    printf(" %d \n", ft_strcmp("\xff", "a"));
    printf(" %d \n", strcmp("\xff", "a"));

    // ************** ft_read **************
	// int		fd;
	// char	*str2;

	// fd = open("file.txt", O_RDONLY);
	// str2 = malloc(15);
    // ft_read(fd, str2, 2);
    // printf(" %s \n", str2);


	// ************** ft_strdup **************
	// char	*str3;

    // str3 = ft_strdup("HELLOOO");
    // printf(" %s \n", str3);


    
    return (0);
}