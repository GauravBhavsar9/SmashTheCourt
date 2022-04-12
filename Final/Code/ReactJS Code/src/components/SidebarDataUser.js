import React from 'react';
// import * as FaIcons from 'react-icons/fa';
import * as AiIcons from 'react-icons/ai';
import * as IoIcons from 'react-icons/io';
import * as IconName  from "react-icons/gi";

export const SidebarData = [
  {
    title: 'Home',
    path: '/home',
    icon: <AiIcons.AiFillHome />,
    cName: 'nav-text'
  },
  {
    title: 'Profile',
    path: '/profile',
    // icon: <IoIcons.IoIosPaper />,
    icon: <IoIcons.IoMdPeople />,
    cName: 'nav-text'
  },
  // {
  //   title: 'Club',
  //   path: '/club',
  //   icon: <IconName.GiTennisRacket />,
  //   cName: 'nav-text'
  // },
 
  {
    title: 'Booking Details',
    path: '/bookingdetails',
    // icon: <FaIcons.IoIosPie />,
    icon: <IoIcons.IoLogoBitcoin />,
    cName: 'nav-text'
  },
  {
    title: 'Book Now',
    path: '/booknow',
    icon: <IconName.GiTennisCourt />,
    cName: 'nav-text'
  },
  {
    title: 'Log-Out',
    path: '/logout',
    icon: <IoIcons.IoIosLogOut />,
    cName: 'nav-text'
  },  
  {
    title: 'Transaction Details',
    path: '/transactiondetails',
    // icon: <FaIcons.IoIosPie />,
    icon: <IoIcons.IoLogoBitcoin />,
    cName: 'nav-text'
  },
  // {
  //   title: 'Support',
  //   path: '/support',
  //   icon: <IoIcons.IoMdHelpCircle />,
  //   cName: 'nav-text'
  // }
];
