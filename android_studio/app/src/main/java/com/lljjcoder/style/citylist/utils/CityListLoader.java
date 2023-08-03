package com.lljjcoder.style.citylist.utils;

import android.content.Context;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.lljjcoder.Constant;
import com.lljjcoder.style.citylist.bean.CityInfoBean;
import com.lljjcoder.utils.utils;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class CityListLoader {
    public static final String BUNDATA = "bundata";
    private static volatile CityListLoader instance;
    private static List<CityInfoBean> mCityListData = new ArrayList();
    private static List<CityInfoBean> mProListData = new ArrayList();

    private CityListLoader() {
    }

    public static CityListLoader getInstance() {
        if (instance == null) {
            synchronized (CityListLoader.class) {
                if (instance == null) {
                    instance = new CityListLoader();
                }
            }
        }
        return instance;
    }

    public List<CityInfoBean> getCityListData() {
        return mCityListData;
    }

    public List<CityInfoBean> getProListData() {
        return mProListData;
    }

    public void loadCityData(Context context) {
        ArrayList arrayList = (ArrayList) new Gson().fromJson(utils.getJson(context, Constant.CITY_DATA), new TypeToken<ArrayList<CityInfoBean>>() { // from class: com.lljjcoder.style.citylist.utils.CityListLoader.1
        }.getType());
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            ArrayList<CityInfoBean> cityList = ((CityInfoBean) arrayList.get(i4)).getCityList();
            for (int i10 = 0; i10 < cityList.size(); i10++) {
                mCityListData.add(cityList.get(i10));
            }
        }
    }

    public void loadProData(Context context) {
        mProListData = (List) new Gson().fromJson(utils.getJson(context, Constant.CITY_DATA), new TypeToken<ArrayList<CityInfoBean>>() { // from class: com.lljjcoder.style.citylist.utils.CityListLoader.2
        }.getType());
    }
}
