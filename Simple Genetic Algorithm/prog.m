%%
%Initialisation
popsize=10; %Nb of chromosome
maxgen=10; %Number of genertion
pc=0.8; %Probability of crossover
pm=0.01; %Probability of mutation
nbGen=12;%Nb of genes
populationBin = zeros(popsize,nbGen);
matingPool = zeros(popsize,nbGen);
fitness = zeros(popsize,1);
upperBound=2;
lowerBound=-1;


%fplot(@(x) sinFunc(x));


%Generate the first population randomly.
for i = 1:popsize
    randVal=rand(nbGen);
    for j = 1:nbGen
        if randVal(j)>0.5
            populationBin(i,j)=1
        end
    end
end


%Convert binary to decimal
%tempPop = populationBin(1,:);
%bin2Dec(populationBin(1,:),upperBound,lowerBound)

%Compute the fitness of every chromosome
sum=0;
for i = 1:popsize
    x=bin2Dec(populationBin(i,:),upperBound,lowerBound);
    fitness(i)=sinFunc(x);
    sum=sum+fitness(i);
end
fitness=fitness/sum;%Relative fitness

%Select random chromosomes for mating pool with concideration of the
%weight
for i = 1:popsize
    randVal=rand
    x=0;
    for j = 1:popsize
        x=x+fitness(j);
        if x>randVal
            matingPool(i,:)=populationBin(j,:);
            break;
        end
    end
end










