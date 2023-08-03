package me.jessyan.retrofiturlmanager.parser;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import me.jessyan.retrofiturlmanager.RetrofitUrlManager;
import me.jessyan.retrofiturlmanager.cache.Cache;
import me.jessyan.retrofiturlmanager.cache.LruCache;
import okhttp3.HttpUrl;

/* loaded from: classes4.dex */
public class SuperUrlParser implements UrlParser {
    private Cache<String, String> mCache;
    private RetrofitUrlManager mRetrofitUrlManager;

    private String getKey(HttpUrl httpUrl, HttpUrl httpUrl2, int i4) {
        return httpUrl.encodedPath() + httpUrl2.encodedPath() + i4;
    }

    private int resolvePathSize(HttpUrl httpUrl, HttpUrl.Builder builder) {
        String fragment = httpUrl.fragment();
        StringBuffer stringBuffer = new StringBuffer();
        int i4 = 0;
        if (fragment.indexOf("#") == -1) {
            String[] split = fragment.split("=");
            if (split.length > 1) {
                i4 = Integer.parseInt(split[1]);
            }
        } else if (fragment.indexOf(RetrofitUrlManager.IDENTIFICATION_PATH_SIZE) == -1) {
            int indexOf = fragment.indexOf("#");
            stringBuffer.append(fragment.substring(indexOf + 1, fragment.length()));
            String[] split2 = fragment.substring(0, indexOf).split("=");
            if (split2.length > 1) {
                i4 = Integer.parseInt(split2[1]);
            }
        } else {
            String[] split3 = fragment.split(RetrofitUrlManager.IDENTIFICATION_PATH_SIZE);
            stringBuffer.append(split3[0]);
            if (split3.length > 1) {
                int indexOf2 = split3[1].indexOf("#");
                if (indexOf2 != -1) {
                    stringBuffer.append(split3[1].substring(indexOf2, split3[1].length()));
                    String substring = split3[1].substring(0, indexOf2);
                    if (!TextUtils.isEmpty(substring)) {
                        i4 = Integer.parseInt(substring);
                    }
                } else {
                    i4 = Integer.parseInt(split3[1]);
                }
            }
        }
        if (TextUtils.isEmpty(stringBuffer.toString())) {
            builder.fragment(null);
        } else {
            builder.fragment(stringBuffer.toString());
        }
        return i4;
    }

    @Override // me.jessyan.retrofiturlmanager.parser.UrlParser
    public void init(RetrofitUrlManager retrofitUrlManager) {
        this.mRetrofitUrlManager = retrofitUrlManager;
        this.mCache = new LruCache(100);
    }

    @Override // me.jessyan.retrofiturlmanager.parser.UrlParser
    public HttpUrl parseUrl(HttpUrl httpUrl, HttpUrl httpUrl2) {
        if (httpUrl == null) {
            return httpUrl2;
        }
        HttpUrl.Builder newBuilder = httpUrl2.newBuilder();
        int resolvePathSize = resolvePathSize(httpUrl2, newBuilder);
        if (TextUtils.isEmpty(this.mCache.get(getKey(httpUrl, httpUrl2, resolvePathSize)))) {
            for (int i4 = 0; i4 < httpUrl2.pathSize(); i4++) {
                newBuilder.removePathSegment(0);
            }
            ArrayList<String> arrayList = new ArrayList();
            arrayList.addAll(httpUrl.encodedPathSegments());
            if (httpUrl2.pathSize() > resolvePathSize) {
                List<String> encodedPathSegments = httpUrl2.encodedPathSegments();
                for (int i10 = resolvePathSize; i10 < encodedPathSegments.size(); i10++) {
                    arrayList.add(encodedPathSegments.get(i10));
                }
            } else if (httpUrl2.pathSize() < resolvePathSize) {
                throw new IllegalArgumentException(String.format("Your final path is %s, the pathSize = %d, but the #baseurl_path_size = %d, #baseurl_path_size must be less than or equal to pathSize of the final path", httpUrl2.scheme() + "://" + httpUrl2.host() + httpUrl2.encodedPath(), Integer.valueOf(httpUrl2.pathSize()), Integer.valueOf(resolvePathSize)));
            }
            for (String str : arrayList) {
                newBuilder.addEncodedPathSegment(str);
            }
        } else {
            newBuilder.encodedPath(this.mCache.get(getKey(httpUrl, httpUrl2, resolvePathSize)));
        }
        HttpUrl build = newBuilder.scheme(httpUrl.scheme()).host(httpUrl.host()).port(httpUrl.port()).build();
        if (TextUtils.isEmpty(this.mCache.get(getKey(httpUrl, httpUrl2, resolvePathSize)))) {
            this.mCache.put(getKey(httpUrl, httpUrl2, resolvePathSize), build.encodedPath());
        }
        return build;
    }
}
