/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nofloren <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/09/02 17:44:59 by nofloren          #+#    #+#             */
/*   Updated: 2020/09/03 14:51:33 by nofloren         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>
#include <sys/errno.h>

size_t	ft_strlen(char *str);
size_t	ft_read(int fd, void *buf, size_t count);
char	*ft_strcpy(char *dest, const char *src);
char	*ft_strdub(const char *str);
int		ft_strcmp(char *s1, char *s2);
int		ft_write(int fd, const void *buf, size_t count);


int main(void)
{
    char dst[50];
    char *src = "Hello World";
    char *s1 = "1234567891";
    char *s2 = "1234567890";
    int i;
    int j;
    int d;
    char *s;
    char *new_str;
    int fd;
    char buf[30 + 1];
    int ret;

    fd = open("test.txt", O_RDONLY);
    ret = ft_read(fd, buf, 30);
    buf[ret] = '\0';
    i = ft_strlen(src);
    d = ft_strcmp(s1, s2);
    s = ft_strcpy(dst, src);
    new_str = ft_strdub(src);
    
    j = ft_write(1, "Hi, my name is Jon\n", 19);
    printf("ft_write return: %d\n", j);
    printf("ft_write return error: %d\n", errno);
    printf("ft_strlen: %d\n", i);
    printf("ft_strcmp: %d\n", d);
    printf("ft_strcpy: %s\n", s);
    printf("ft_strdup: %s\n", new_str);
    printf("ft_read: %s\n", buf);
    printf("ft_read return: %d\n", ret);
    return (0);
}