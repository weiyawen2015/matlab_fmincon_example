function stop = myoutput(x,optimValues,state,displayflag)
    stop = false;
    switch state
        case 'iter'      
            %% PRINT RESULTS
            fprintf(' It.:%5i Obj.:%11.4f Vol.:%7.3f ch.:%7.3f\n',optimValues.iteration,optimValues.fval, ...
                mean(x(:)),optimValues.stepsize);
             %% PLOT DENSITIES
             if displayflag,  figure(10);plot(x(1),x(2),'b*');grid on ;hold on; end
              title([' It.:',sprintf('%5i',optimValues.iteration),...
                ' Obj. = ',sprintf('%11.4f',optimValues.fval),...
                ' ch.:',sprintf('%7.3f',optimValues.stepsize)]);
            
        case 'init'
        case 'done'
            hold off; 
        otherwise
    end % switch
end % myOutputFcn