// Will register dev utilities on window
export const registerWindowMethods = () => {
  window.SendNotification = (data) => {
    window.dispatchEvent(
      new MessageEvent("message", {
        data: {
          action: "notify",
          ...data,
        },
      })
    );
  };
};

// Used for browser env handling
export const BrowserMockConfigData = {
  NotificationStyling: {
    group: true,
    position: "top-right",
    progress: false,
  },
  VariantDefinitions: {
    success: {
      classes: "success",
    },
    primary: {
      classes: "primary",
    },
    error: {
      classes: "error",
    },
    police: {
      classes: "police",
    },
    ambulance: {
      classes: "ambulance",
    },
  },
};
