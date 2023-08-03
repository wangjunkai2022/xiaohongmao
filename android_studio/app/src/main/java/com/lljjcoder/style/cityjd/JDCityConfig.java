package com.lljjcoder.style.cityjd;

/* loaded from: classes3.dex */
public class JDCityConfig {
    private ShowType showType;

    /* loaded from: classes3.dex */
    public static class Builder {
        public ShowType showType = ShowType.PRO_CITY_DIS;

        public JDCityConfig build() {
            return new JDCityConfig(this);
        }

        public Builder setJDCityShowType(ShowType showType) {
            this.showType = showType;
            return this;
        }
    }

    /* loaded from: classes3.dex */
    public enum ShowType {
        PRO_CITY,
        PRO_CITY_DIS
    }

    public JDCityConfig(Builder builder) {
        this.showType = ShowType.PRO_CITY_DIS;
        this.showType = builder.showType;
    }

    public ShowType getShowType() {
        return this.showType;
    }

    public void setShowType(ShowType showType) {
        this.showType = showType;
    }
}
