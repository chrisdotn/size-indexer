// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

struct InitializeRiskConfigParams {
    uint256 crOpening;
    uint256 crLiquidation;
    uint256 minimumCreditBorrowAToken;
    uint256 borrowATokenCap;
    uint256 minTenor;
    uint256 maxTenor;
}

/// @title ISizeView
/// @custom:security-contact security@size.credit
/// @author Size (https://size.credit/)
/// @notice View methods for the Size protocol
interface ISizeView {
    /// @notice Get the collateral ratio of a user
    /// @param user The address of the user
    /// @return The collateral ratio of the user
    function collateralRatio(address user) external view returns (uint256);

    /// @notice Get the risk configuration parameters
    /// @return The risk configuration parameters
    function riskConfig() external view returns (InitializeRiskConfigParams memory);

}