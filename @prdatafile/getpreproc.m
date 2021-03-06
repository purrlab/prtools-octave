%GETPREPROC Get datafile PREPROC field
%
%	   PREPROC = GETPREPROC(A)
%
% Retrieves the PREPROC field of the datafile A. This is a
% structure array with two fields:
% - preproc: a string with a command name
% - pars:    a cell array with parameters
%
%    [COMMAND,PARS]  = GETPREPROC(A,N)
%
% In this case just the command name and the parameter cell array of
% the N-th preprocessing command are returned.
%
% or just the name of the N-th file.
% If N larger than the number of stored commands, COMMAND and PARS
% will be empty.

function [com,pars] = getpreproc(a,n)

		
  if nargin < 2
    com = a.preproc;
    pars = {};
  else
    if n > length(a.preproc)
      com = [];
      pars = {};
    else
      com = a.preproc(n).preproc;
      pars= a.preproc(n).pars;
    end
  end
  
return
