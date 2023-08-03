package com.coremedia.iso;

import com.ksyun.media.streamer.logstats.StatsConstant;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.util.Enumeration;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: PropertyBoxParserImpl.java */
/* loaded from: classes.dex */
public class k extends a {

    /* renamed from: h  reason: collision with root package name */
    static String[] f10498h = new String[0];

    /* renamed from: c  reason: collision with root package name */
    Properties f10499c;

    /* renamed from: d  reason: collision with root package name */
    Pattern f10500d = Pattern.compile("(.*)\\((.*?)\\)");

    /* renamed from: e  reason: collision with root package name */
    StringBuilder f10501e = new StringBuilder();

    /* renamed from: f  reason: collision with root package name */
    String f10502f;

    /* renamed from: g  reason: collision with root package name */
    String[] f10503g;

    public k(String... strArr) {
        InputStream resourceAsStream = getClass().getResourceAsStream("/isoparser-default.properties");
        try {
            Properties properties = new Properties();
            this.f10499c = properties;
            try {
                properties.load(resourceAsStream);
                ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
                Enumeration<URL> resources = (contextClassLoader == null ? ClassLoader.getSystemClassLoader() : contextClassLoader).getResources("isoparser-custom.properties");
                while (resources.hasMoreElements()) {
                    InputStream openStream = resources.nextElement().openStream();
                    try {
                        this.f10499c.load(openStream);
                        openStream.close();
                    } catch (Throwable th) {
                        openStream.close();
                        throw th;
                    }
                }
                for (String str : strArr) {
                    this.f10499c.load(getClass().getResourceAsStream(str));
                }
                try {
                    resourceAsStream.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            } catch (IOException e10) {
                throw new RuntimeException(e10);
            }
        } catch (Throwable th2) {
            try {
                resourceAsStream.close();
            } catch (IOException e11) {
                e11.printStackTrace();
            }
            throw th2;
        }
    }

    @Override // com.coremedia.iso.a
    public com.coremedia.iso.boxes.d b(String str, byte[] bArr, String str2) {
        c(str, bArr, str2);
        try {
            Class<?> cls = Class.forName(this.f10502f);
            String[] strArr = this.f10503g;
            if (strArr.length > 0) {
                Class<?>[] clsArr = new Class[strArr.length];
                Object[] objArr = new Object[strArr.length];
                int i4 = 0;
                while (true) {
                    String[] strArr2 = this.f10503g;
                    if (i4 >= strArr2.length) {
                        return (com.coremedia.iso.boxes.d) cls.getConstructor(clsArr).newInstance(objArr);
                    }
                    if ("userType".equals(strArr2[i4])) {
                        objArr[i4] = bArr;
                        clsArr[i4] = byte[].class;
                    } else if ("type".equals(this.f10503g[i4])) {
                        objArr[i4] = str;
                        clsArr[i4] = String.class;
                    } else if ("parent".equals(this.f10503g[i4])) {
                        objArr[i4] = str2;
                        clsArr[i4] = String.class;
                    } else {
                        throw new InternalError("No such param: " + this.f10503g[i4]);
                    }
                    i4++;
                }
            } else {
                return (com.coremedia.iso.boxes.d) cls.newInstance();
            }
        } catch (ClassNotFoundException e4) {
            throw new RuntimeException(e4);
        } catch (IllegalAccessException e10) {
            throw new RuntimeException(e10);
        } catch (InstantiationException e11) {
            throw new RuntimeException(e11);
        } catch (NoSuchMethodException e12) {
            throw new RuntimeException(e12);
        } catch (InvocationTargetException e13) {
            throw new RuntimeException(e13);
        }
    }

    public void c(String str, byte[] bArr, String str2) {
        String property;
        if (bArr != null) {
            if ("uuid".equals(str)) {
                Properties properties = this.f10499c;
                property = properties.getProperty("uuid[" + e.b(bArr).toUpperCase() + "]");
                if (property == null) {
                    Properties properties2 = this.f10499c;
                    property = properties2.getProperty(String.valueOf(str2) + "-uuid[" + e.b(bArr).toUpperCase() + "]");
                }
                if (property == null) {
                    property = this.f10499c.getProperty("uuid");
                }
            } else {
                throw new RuntimeException("we have a userType but no uuid box type. Something's wrong");
            }
        } else {
            property = this.f10499c.getProperty(str);
            if (property == null) {
                StringBuilder sb = this.f10501e;
                sb.append(str2);
                sb.append(shaded.org.apache.commons.codec.language.l.f93713d);
                sb.append(str);
                String sb2 = sb.toString();
                this.f10501e.setLength(0);
                property = this.f10499c.getProperty(sb2);
            }
        }
        if (property == null) {
            property = this.f10499c.getProperty(StatsConstant.BW_EST_STRATEGY_NORMAL);
        }
        if (property != null) {
            if (!property.endsWith(")")) {
                this.f10503g = f10498h;
                this.f10502f = property;
                return;
            }
            Matcher matcher = this.f10500d.matcher(property);
            if (matcher.matches()) {
                this.f10502f = matcher.group(1);
                if (matcher.group(2).length() == 0) {
                    this.f10503g = f10498h;
                    return;
                } else {
                    this.f10503g = matcher.group(2).length() > 0 ? matcher.group(2).split(",") : new String[0];
                    return;
                }
            }
            throw new RuntimeException("Cannot work with that constructor: " + property);
        }
        throw new RuntimeException("No box object found for " + str);
    }

    public k(Properties properties) {
        this.f10499c = properties;
    }
}
