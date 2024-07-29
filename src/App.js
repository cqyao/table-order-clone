import React, { useState } from "react";
import {
  BrowserRouter as Router,
  Route,
  Routes,
  Navigate,
} from "react-router-dom";
import MenuOrderPage from "./Customer/components/MenuOrderPage";
import AdminLoginPage from "./Admin/components/AdminLoginPage";
import OrderDashboard from "./Admin/components/OrderDashboard";
import RevenuePage from "./Admin/components/RevenuePage";
import SignupPage from "./Admin/components/SignupPage";
import ForgotPassword from "./Admin/components/ForgotPassword";
import Profile from "./Admin/components/Profile";
import ManageMenu from "./Admin/components/ManageMenu";
import AddItem from "./Admin/components/AddItem";
import UpdateItem from "./Admin/components/UpdateItem";

const App = () => {
  const [isAdminLoggedIn, setIsAdminLoggedIn] = useState(false);

  const handleAdminLogin = () => {
    setIsAdminLoggedIn(true);
  };

  return (
    <Router>
      <Routes>
        <Route path="/menu" element={<MenuOrderPage />} />
        <Route
          path="/admin"
          element={
            isAdminLoggedIn ? (
              <Navigate to="/dashboard" />
            ) : (
              <AdminLoginPage onLogin={handleAdminLogin} />
            )
          }
        />
        <Route path="/signup" element={<SignupPage />} />
        <Route path="/forgot-password" element={<ForgotPassword />} />
        <Route
          path="/dashboard"
          element={
            isAdminLoggedIn ? <OrderDashboard /> : <Navigate to="/admin" />
          }
        />
        <Route
          path="/revenue"
          element={isAdminLoggedIn ? <RevenuePage /> : <Navigate to="/admin" />}
        />
        <Route
          path="/profile"
          element={isAdminLoggedIn ? <Profile /> : <Navigate to="/admin" />}
        />
        <Route
          path="/manage-menu"
          element={isAdminLoggedIn ? <ManageMenu /> : <Navigate to="/admin" />}
        />
        <Route
          path="/add-item"
          element={isAdminLoggedIn ? <AddItem /> : <Navigate to="/admin" />}
        />
        <Route
          path="/update-item/:id"
          element={isAdminLoggedIn ? <UpdateItem /> : <Navigate to="/admin" />}
        />
        <Route path="/" element={<Navigate to="/admin" />} />
      </Routes>
    </Router>
  );
};

export default App;