package com.lljjcoder.style.citythreelist;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.lljjcoder.style.citylist.bean.CityInfoBean;
import com.lljjcoder.style.citylist.utils.CityListLoader;
import com.lljjcoder.style.citypickerview.R;
import com.lljjcoder.style.citythreelist.CityAdapter;
import com.lljjcoder.widget.RecycleViewDividerForList;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class CityActivity extends Activity {
    private TextView mCityNameTv;
    private RecyclerView mCityRecyclerView;
    private ImageView mImgBack;
    private CityInfoBean mProInfo = null;
    private String cityName = "";
    private CityBean cityBean = new CityBean();
    private CityBean area = new CityBean();

    private void initView() {
        this.mImgBack = (ImageView) findViewById(R.id.img_left);
        int i4 = R.id.cityname_tv;
        this.mCityNameTv = (TextView) findViewById(i4);
        this.mImgBack.setVisibility(0);
        this.mImgBack.setOnClickListener(new View.OnClickListener() { // from class: com.lljjcoder.style.citythreelist.CityActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CityActivity.this.finish();
            }
        });
        this.mCityNameTv = (TextView) findViewById(i4);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.city_recyclerview);
        this.mCityRecyclerView = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        this.mCityRecyclerView.addItemDecoration(new RecycleViewDividerForList((Context) this, 0, true));
    }

    private void setData(CityInfoBean cityInfoBean) {
        if (cityInfoBean == null || cityInfoBean.getCityList().size() <= 0) {
            return;
        }
        TextView textView = this.mCityNameTv;
        textView.setText("" + cityInfoBean.getName());
        final ArrayList<CityInfoBean> cityList = cityInfoBean.getCityList();
        if (cityList == null) {
            return;
        }
        CityAdapter cityAdapter = new CityAdapter(this, cityList);
        this.mCityRecyclerView.setAdapter(cityAdapter);
        cityAdapter.setOnItemClickListener(new CityAdapter.OnItemSelectedListener() { // from class: com.lljjcoder.style.citythreelist.CityActivity.1
            @Override // com.lljjcoder.style.citythreelist.CityAdapter.OnItemSelectedListener
            public void onItemSelected(View view, int i4) {
                CityActivity.this.cityBean.setId(((CityInfoBean) cityList.get(i4)).getId());
                CityActivity.this.cityBean.setName(((CityInfoBean) cityList.get(i4)).getName());
                Intent intent = new Intent(CityActivity.this, AreaActivity.class);
                intent.putExtra(CityListLoader.BUNDATA, (Parcelable) cityList.get(i4));
                CityActivity.this.startActivityForResult(intent, 1001);
            }
        });
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i4, int i10, Intent intent) {
        super.onActivityResult(i4, i10, intent);
        if (i10 != 1001 || intent == null) {
            return;
        }
        this.area = (CityBean) intent.getParcelableExtra("area");
        Intent intent2 = new Intent();
        intent2.putExtra("city", this.cityBean);
        intent2.putExtra("area", this.area);
        setResult(-1, intent2);
        finish();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_citylist);
        this.mProInfo = (CityInfoBean) getIntent().getParcelableExtra(CityListLoader.BUNDATA);
        initView();
        setData(this.mProInfo);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }
}
