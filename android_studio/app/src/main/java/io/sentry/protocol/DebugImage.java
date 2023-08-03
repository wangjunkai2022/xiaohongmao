package io.sentry.protocol;

import io.sentry.c1;
import io.sentry.i1;
import io.sentry.k1;
import io.sentry.m1;
import io.sentry.o0;
import io.sentry.o1;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes4.dex */
public final class DebugImage implements o1, m1 {
    public static final String PROGUARD = "proguard";
    @m8.h
    private String arch;
    @m8.h
    private String codeFile;
    @m8.h
    private String codeId;
    @m8.h
    private String debugFile;
    @m8.h
    private String debugId;
    @m8.h
    private String imageAddr;
    @m8.h
    private Long imageSize;
    @m8.h
    private String type;
    @m8.h
    private Map<String, Object> unknown;
    @m8.h
    private String uuid;

    /* loaded from: classes4.dex */
    public static final class a implements c1<DebugImage> {
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public DebugImage a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            DebugImage debugImage = new DebugImage();
            i1Var.b();
            HashMap hashMap = null;
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                char c10 = 65535;
                switch (I.hashCode()) {
                    case -1840639000:
                        if (I.equals(b.f83558d)) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -1443345323:
                        if (I.equals("image_addr")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case -1442803611:
                        if (I.equals(b.f83562h)) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case -1127437170:
                        if (I.equals(b.f83560f)) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 3002454:
                        if (I.equals(b.f83563i)) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 3575610:
                        if (I.equals("type")) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case 3601339:
                        if (I.equals("uuid")) {
                            c10 = 6;
                            break;
                        }
                        break;
                    case 547804807:
                        if (I.equals(b.f83557c)) {
                            c10 = 7;
                            break;
                        }
                        break;
                    case 941842605:
                        if (I.equals(b.f83559e)) {
                            c10 = '\b';
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        debugImage.debugFile = i1Var.E0();
                        break;
                    case 1:
                        debugImage.imageAddr = i1Var.E0();
                        break;
                    case 2:
                        debugImage.imageSize = i1Var.A0();
                        break;
                    case 3:
                        debugImage.codeFile = i1Var.E0();
                        break;
                    case 4:
                        debugImage.arch = i1Var.E0();
                        break;
                    case 5:
                        debugImage.type = i1Var.E0();
                        break;
                    case 6:
                        debugImage.uuid = i1Var.E0();
                        break;
                    case 7:
                        debugImage.debugId = i1Var.E0();
                        break;
                    case '\b':
                        debugImage.codeId = i1Var.E0();
                        break;
                    default:
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        i1Var.G0(o0Var, hashMap, I);
                        break;
                }
            }
            i1Var.p();
            debugImage.setUnknown(hashMap);
            return debugImage;
        }
    }

    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83555a = "uuid";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83556b = "type";

        /* renamed from: c  reason: collision with root package name */
        public static final String f83557c = "debug_id";

        /* renamed from: d  reason: collision with root package name */
        public static final String f83558d = "debug_file";

        /* renamed from: e  reason: collision with root package name */
        public static final String f83559e = "code_id";

        /* renamed from: f  reason: collision with root package name */
        public static final String f83560f = "code_file";

        /* renamed from: g  reason: collision with root package name */
        public static final String f83561g = "image_addr";

        /* renamed from: h  reason: collision with root package name */
        public static final String f83562h = "image_size";

        /* renamed from: i  reason: collision with root package name */
        public static final String f83563i = "arch";
    }

    @m8.h
    public String getArch() {
        return this.arch;
    }

    @m8.h
    public String getCodeFile() {
        return this.codeFile;
    }

    @m8.h
    public String getCodeId() {
        return this.codeId;
    }

    @m8.h
    public String getDebugFile() {
        return this.debugFile;
    }

    @m8.h
    public String getDebugId() {
        return this.debugId;
    }

    @m8.h
    public String getImageAddr() {
        return this.imageAddr;
    }

    @m8.h
    public Long getImageSize() {
        return this.imageSize;
    }

    @m8.h
    public String getType() {
        return this.type;
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.unknown;
    }

    @m8.h
    public String getUuid() {
        return this.uuid;
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        if (this.uuid != null) {
            k1Var.A("uuid").l0(this.uuid);
        }
        if (this.type != null) {
            k1Var.A("type").l0(this.type);
        }
        if (this.debugId != null) {
            k1Var.A(b.f83557c).l0(this.debugId);
        }
        if (this.debugFile != null) {
            k1Var.A(b.f83558d).l0(this.debugFile);
        }
        if (this.codeId != null) {
            k1Var.A(b.f83559e).l0(this.codeId);
        }
        if (this.codeFile != null) {
            k1Var.A(b.f83560f).l0(this.codeFile);
        }
        if (this.imageAddr != null) {
            k1Var.A("image_addr").l0(this.imageAddr);
        }
        if (this.imageSize != null) {
            k1Var.A(b.f83562h).h0(this.imageSize);
        }
        if (this.arch != null) {
            k1Var.A(b.f83563i).l0(this.arch);
        }
        Map<String, Object> map = this.unknown;
        if (map != null) {
            for (String str : map.keySet()) {
                k1Var.A(str).q0(o0Var, this.unknown.get(str));
            }
        }
        k1Var.p();
    }

    public void setArch(@m8.h String str) {
        this.arch = str;
    }

    public void setCodeFile(@m8.h String str) {
        this.codeFile = str;
    }

    public void setCodeId(@m8.h String str) {
        this.codeId = str;
    }

    public void setDebugFile(@m8.h String str) {
        this.debugFile = str;
    }

    public void setDebugId(@m8.h String str) {
        this.debugId = str;
    }

    public void setImageAddr(@m8.h String str) {
        this.imageAddr = str;
    }

    public void setImageSize(@m8.h Long l10) {
        this.imageSize = l10;
    }

    public void setType(@m8.h String str) {
        this.type = str;
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.unknown = map;
    }

    public void setUuid(@m8.h String str) {
        this.uuid = str;
    }

    public void setImageSize(long j4) {
        this.imageSize = Long.valueOf(j4);
    }
}
