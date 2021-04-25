#include "stdio.h"

#define LINE_MAX_NUM 1000

void main(int argc,char **argv)
{
	FILE *fp;
	char *filename;
	char line[LINE_MAX_NUM];

	filename = argv[1];

	fp=fopen(filename,"r");
	if(NULL == fp)
	{
		printf("can not open file!");
		return;
	}

	while(!feof(fp))
	{
		fgets(line,1000,fp);
        printf("%s", line);	
	}

	fclose(fp);
	return;
}