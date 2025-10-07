// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";
// import "./interfaces/ISizeView.sol";

/// Index calls to any Size functions
/// To hook on more function calls, specify that this listener should implement that interface and follow the compiler errors.
contract SizeListener is Size$OnBuyCreditLimitEvent
{
    /// Emitted events are indexed.
    /// To change the data which is indexed, modify the event or add more events.
    // event IsLiquidatable(address user, bool isLiquidatable);

    // Event declarations for all Size contract events
    event BuyCreditLimitEvent(uint64 chainId, Size$BuyCreditLimitEventParams inputs);


    // modifier emitIsLiquidatable(EventContext memory ctx, address user) {
    //     _;
    //     emit IsLiquidatable(user, _isLiquidatable(ctx, user));
    // }

    // function _isLiquidatable(
    //     EventContext memory ctx,
    //     address user
    // ) internal returns (bool) {
    //     return
    //         ISizeView(ctx.txn.call.callee()).collateralRatio(user) <
    //         ISizeView(ctx.txn.call.callee()).riskConfig().crLiquidation;
    // }

    function onBuyCreditLimitEvent(EventContext memory, Size$BuyCreditLimitEventParams memory inputs)
        external
        virtual
        override
    {
        emit BuyCreditLimitEvent(uint64(block.chainid), inputs);
    }

    // function onBuyCreditMarketEvent(EventContext memory, Size$BuyCreditMarketEventParams memory inputs)
    //     external
    //     virtual
    //     override
    // {
    //     emit BuyCreditMarketEvent(uint64(block.chainid), inputs);
    // }

    // function onClaimEvent(EventContext memory, Size$ClaimEventParams memory inputs) external virtual override {
    //     emit ClaimEvent(uint64(block.chainid), inputs);
    // }

    // function onCompensateEvent(EventContext memory, Size$CompensateEventParams memory inputs)
    //     external
    //     virtual
    //     override
    // {
    //     emit CompensateEvent(uint64(block.chainid), inputs);
    // }

    // function onCreateCreditPositionEvent(EventContext memory, Size$CreateCreditPositionEventParams memory inputs)
    //     external
    //     virtual
    //     override
    // {
    //     emit CreateCreditPositionEvent(uint64(block.chainid), inputs);
    // }

    // function onCreateDebtPositionEvent(EventContext memory, Size$CreateDebtPositionEventParams memory inputs)
    //     external
    //     virtual
    //     override
    // {
    //     emit CreateDebtPositionEvent(uint64(block.chainid), inputs);
    // }

    // function onDepositEvent(EventContext memory, Size$DepositEventParams memory inputs) external virtual override {
    //     emit DepositEvent(uint64(block.chainid), inputs);
    // }

    // function onInitializeEvent(EventContext memory, Size$InitializeEventParams memory inputs)
    //     external
    //     virtual
    //     override
    // {
    //     emit InitializeEvent(uint64(block.chainid), inputs);
    // }

    // function onInitializedEvent(EventContext memory, Size$InitializedEventParams memory inputs)
    //     external
    //     virtual
    //     override
    // {
    //     emit InitializedEvent(uint64(block.chainid), inputs);
    // }

    // function onLiquidateEvent(EventContext memory, Size$LiquidateEventParams memory inputs)
    //     external
    //     virtual
    //     override
    // {
    //     emit LiquidateEvent(uint64(block.chainid), inputs);
    // }

    // function onLiquidateWithReplacementEvent(
    //     EventContext memory,
    //     Size$LiquidateWithReplacementEventParams memory inputs
    // ) external virtual override {
    //     emit LiquidateWithReplacementEvent(uint64(block.chainid), inputs);
    // }

    // function onPartialRepayEvent(EventContext memory, Size$PartialRepayEventParams memory inputs)
    //     external
    //     virtual
    //     override
    // {
    //     emit PartialRepayEvent(uint64(block.chainid), inputs);
    // }

    // function onPausedEvent(EventContext memory, Size$PausedEventParams memory inputs) external virtual override {
    //     emit PausedEvent(uint64(block.chainid), inputs);
    // }

    // function onRepayEvent(EventContext memory, Size$RepayEventParams memory inputs) external virtual override {
    //     emit RepayEvent(uint64(block.chainid), inputs);
    // }

    // function onRoleAdminChangedEvent(EventContext memory, Size$RoleAdminChangedEventParams memory inputs)
    //     external
    //     virtual
    //     override
    // {
    //     emit RoleAdminChangedEvent(uint64(block.chainid), inputs);
    // }

    // function onRoleGrantedEvent(EventContext memory, Size$RoleGrantedEventParams memory inputs)
    //     external
    //     virtual
    //     override
    // {
    //     emit RoleGrantedEvent(uint64(block.chainid), inputs);
    // }

    // function onRoleRevokedEvent(EventContext memory, Size$RoleRevokedEventParams memory inputs)
    //     external
    //     virtual
    //     override
    // {
    //     emit RoleRevokedEvent(uint64(block.chainid), inputs);
    // }

    // function onSelfLiquidateEvent(EventContext memory, Size$SelfLiquidateEventParams memory inputs)
    //     external
    //     virtual
    //     override
    // {
    //     emit SelfLiquidateEvent(uint64(block.chainid), inputs);
    // }

    // function onSellCreditLimitEvent(EventContext memory, Size$SellCreditLimitEventParams memory inputs)
    //     external
    //     virtual
    //     override
    // {
    //     emit SellCreditLimitEvent(uint64(block.chainid), inputs);
    // }

    // function onSellCreditMarketEvent(EventContext memory, Size$SellCreditMarketEventParams memory inputs)
    //     external
    //     virtual
    //     override
    // {
    //     emit SellCreditMarketEvent(uint64(block.chainid), inputs);
    // }

    // function onSetCopyLimitOrderConfigsEvent(
    //     EventContext memory,
    //     Size$SetCopyLimitOrderConfigsEventParams memory inputs
    // ) external virtual override {
    //     // emit SetCopyLimitOrderConfigsEvent(uint64(block.chainid), inputs);
    // }

    // // function onSetUserConfigurationEvent(EventContext memory, Size$SetUserConfigurationEventParams memory inputs)
    // //     external
    // //     virtual
    // //     override
    // // {
    // //     emit SetUserConfigurationEvent(uint64(block.chainid), inputs);
    // // }

    // function onSetVaultEvent(EventContext memory, Size$SetVaultEventParams memory inputs)
    //     external
    //     virtual
    //     override
    // {
    //     emit SetVaultEvent(uint64(block.chainid), inputs);
    // }


    // function onSwapDataEvent(EventContext memory, Size$SwapDataEventParams memory inputs)

    //     external
    //     virtual
    //     override
    // {
    //     emit SwapDataEvent(uint64(block.chainid), inputs);
    // }

    // function onUnpausedEvent(EventContext memory, Size$UnpausedEventParams memory inputs)
    //     external
    //     virtual
    //     override
    // {
    //     emit UnpausedEvent(uint64(block.chainid), inputs);
    // }

    // function onUpdateConfigEvent(EventContext memory, Size$UpdateConfigEventParams memory inputs)
    //     external
    //     virtual
    //     override
    // {
    //     emit UpdateConfigEvent(uint64(block.chainid), inputs);
    // }


    // function onUpdateCreditPositionEvent(EventContext memory, Size$UpdateCreditPositionEventParams memory inputs)
    //     external
    //     virtual
    //     override
    // {
    //     emit UpdateCreditPositionEvent(uint64(block.chainid), inputs);
    // }

    // function onUpdateDebtPositionEvent(EventContext memory, Size$UpdateDebtPositionEventParams memory inputs)
    //     external
    //     virtual
    //     override
    // {
    //     emit UpdateDebtPositionEvent(uint64(block.chainid), inputs);
    // }

    // function onUpgradedEvent(EventContext memory, Size$UpgradedEventParams memory inputs)
    //     external
    //     virtual
    //     override
    // {
    //     emit UpgradedEvent(uint64(block.chainid), inputs);
    // }

    // function onVariablePoolBorrowRateUpdatedEvent(
    //     EventContext memory,
    //     Size$VariablePoolBorrowRateUpdatedEventParams memory inputs
    // ) external virtual override {
    //     emit VariablePoolBorrowRateUpdatedEvent(uint64(block.chainid), inputs);
    // }

    // function onWithdrawEvent(
    //     EventContext memory,
    //     Size$WithdrawEventParams memory inputs
    // ) external virtual override {
    //     emit WithdrawEvent(uint64(block.chainid), inputs);
    // }
}
