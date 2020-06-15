/* *******************************************************************
 * Copyright (c) 2002 Palo Alto Research Center, Incorporated (PARC).
 * All rights reserved.
 * This program and the accompanying materials are made available
 * under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     PARC     initial implementation
 * ******************************************************************/


/*
Copyright (c) 2001-2002 Palo Alto Research Center Incorporated. All Rights Reserved.
 */

package gui;

import javax.swing.*;
import support.Log;
import figures.Point;

public class Main {
    static FigurePanel panel;
 
    public static void main(String[] args) {
        JFrame figureFrame = new JFrame("Figure Editor");
        panel = new FigurePanel();
        figureFrame.setContentPane(panel);
        figureFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        figureFrame.pack();
        figureFrame.setVisible(true);
        Point p = new Point(0, 0);
       //p.setY(-10);
        //p.move(15, 15);
    }
}