package com.zefun.web.entity;

public class CommissionScheme {
    /** ������ʶ */
    private Integer commissionId;

    /** �ŵ��ʶ */
    private Integer storeId;

    /** �������ͣ�1����Ʒ��2����Ŀ�� */
    private Integer commissionType;

    /** �ֽ������ɣ���50:50,50:50�� */
    private String cashTwoCommission;

    /** �ֽ�������ɣ���50:50,50:50�� */
    private String cashThreeCommission;

    /** ���������ɣ���50:50,50:50�� */
    private String cardTwoCommission;

    /** ����������ɣ���50:50,50:50�� */
    private String cardThreeCommission;

    /** ����ʱ�� */
    private String createTime;

    /** �������˱�ʶ */
    private Integer lastOperatorId;

    /** �Ƿ�ɾ��(0:��1:��) */
    private Integer isDeleted;

    public Integer getCommissionId() {
        return commissionId;
    }

    public void setCommissionId(Integer commissionId) {
        this.commissionId = commissionId;
    }

    public Integer getStoreId() {
        return storeId;
    }

    public void setStoreId(Integer storeId) {
        this.storeId = storeId;
    }

    public Integer getCommissionType() {
        return commissionType;
    }

    public void setCommissionType(Integer commissionType) {
        this.commissionType = commissionType;
    }

    public String getCashTwoCommission() {
        return cashTwoCommission;
    }

    public void setCashTwoCommission(String cashTwoCommission) {
        this.cashTwoCommission = cashTwoCommission == null ? null : cashTwoCommission.trim();
    }

    public String getCashThreeCommission() {
        return cashThreeCommission;
    }

    public void setCashThreeCommission(String cashThreeCommission) {
        this.cashThreeCommission = cashThreeCommission == null ? null : cashThreeCommission.trim();
    }

    public String getCardTwoCommission() {
        return cardTwoCommission;
    }

    public void setCardTwoCommission(String cardTwoCommission) {
        this.cardTwoCommission = cardTwoCommission == null ? null : cardTwoCommission.trim();
    }

    public String getCardThreeCommission() {
        return cardThreeCommission;
    }

    public void setCardThreeCommission(String cardThreeCommission) {
        this.cardThreeCommission = cardThreeCommission == null ? null : cardThreeCommission.trim();
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime == null ? null : createTime.trim();
    }

    public Integer getLastOperatorId() {
        return lastOperatorId;
    }

    public void setLastOperatorId(Integer lastOperatorId) {
        this.lastOperatorId = lastOperatorId;
    }

    public Integer getIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(Integer isDeleted) {
        this.isDeleted = isDeleted;
    }
}