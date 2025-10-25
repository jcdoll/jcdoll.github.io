classdef constants
  properties (Constant)
    % Physical
    eps_0 = 8.854e-12; % F/m, relative permittivity of vacuum
    g = 9.81; % m/s^2, gravitational acceleration
    k_B = 1.381e-23; % J/K, Boltzmann constant
    e = 1.602e-19; % C, fundamental charge on electron
    absoluteZero = -273.15; % degC
    c = 2.99792458e8; % m/s, speed of light

    % Sim
    gridPitchDefault = 0.1e-6; % m
    gridPointMax = 128;

    % Plotting constants
    black = [0 0 0];
    darkGray = [.2 .2 .2];
    gray = [.5 .5 .5];
    lightGray = [.8 .8 .8];
    white = [1 1 1];

    lightBlue = [60 180 250] / 255;
    blue = [11 132 199] / 255;
    darkBlue = [5 60 120] / 255;

    orange = [255 102 0] / 255;
    lightOrange = [255 160 30] / 255;
    darkOrange = [180 50 0] / 255;

    lightGreen = [0 220 0] / 255;
    green = [0 153 0] / 255;
    darkGreen = [0 80 0] / 255;

    lightRed = [255 60 60] / 255;
    red = [190 20 20] / 255;
    darkRed = [80 10 10] / 255;

    lightPurple = [218 112 214] / 255;
    purple = [147 112 219] / 255;
    darkPurple = [75 0 130] / 255;

    colorOrder = [constants.blue; constants.orange; constants.green; constants.red; constants.lightBlue; constants.lightOrange; constants.lightGreen; constants.lightRed];
    lightColorOrder = [constants.lightBlue; constants.lightOrange; constants.lightGreen; constants.lightRed];
    darkColorOrder = [constants.darkBlue; constants.darkOrange; constants.darkGreen; constants.darkRed];
    longColorOrder = [constants.blue; constants.orange; constants.green; constants.blue; constants.orange; constants.green; constants.blue; constants.orange; constants.green];

    grayColors = [.3 .4 .6 .8 1]'*constants.gray;
    orangeColors = [.3 .4 .6 .8 1]'*constants.orange;
    blueColors = [.3 .4 .6 .8 1]'*constants.blue;
    greenColors = [.3 .4 .6 .8 1]'*constants.green;

    textFontSize = 14;
    axisFontSize = 14;
    axisLineWidth = 2;
    plotLineWidth = 1.5;
    patchLineWidth = 1.5;
    markerSize = 7;
  end

  methods (Static)
    function K = celsiusToKelvin(degC)
      K = degC - constants.absoluteZero;
    end

    function degC = kelvinToCelsius(K)
      degC = K + constants.absoluteZero;
    end

    function gf = newtonsToGramForce(N)
      gf = N / constants.g * 1e3;
    end

    function N = gramForceToNewtons(gf)
      N = gf / 1e3 * constants.g;
    end

    function mmHg = pascalsToMillimetersHg(Pa)
      mmHg = Pa / 133.322;
    end

    function Pa = millimetersHgToPascals(mmHg)
      Pa = mmHg * 133.322;
    end

    function psi = pascalsToPsi(Pa)
        psi = Pa / 6894.76;
    end

    function Pa = psiToPascals(psi)
        Pa = psi * 6894.76;
    end

    function setupPlotDefaults()
      set(0, 'DefaultTextFontSize', constants.textFontSize);
      set(0, 'DefaultAxesFontSize', constants.axisFontSize);

      set(0, 'DefaultAxesBox', 'on');
      set(0, 'DefaultAxesXGrid', 'on');
      set(0, 'DefaultAxesYGrid', 'on');
      set(0, 'DefaultAxesGridLineStyle', ':');

      set(0, 'DefaultAxesLineWidth', constants.axisLineWidth);
      set(0, 'DefaultLineLineWidth', constants.plotLineWidth);
      set(0, 'DefaultPatchLineWidth', constants.patchLineWidth);

      set(0, 'DefaultLineMarkerSize', constants.markerSize);

      set(0, 'DefaultAxesColorOrder', constants.colorOrder);
      set(0, 'DefaultLineMarkerFaceColor', constants.white);
      set(0, 'DefaultAxesColor', constants.white);
      set(0, 'DefaultFigureColor', constants.white);
    end
  end

  methods
    function obj = constants()
      constants.setupPlotDefaults(); % setup plot defaults when instantiated
    end
  end
end

