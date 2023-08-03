package com.tangxiaolv.telegramgallery.TL;

/* compiled from: storage_FileType.java */
/* loaded from: classes3.dex */
public class o extends m {

    /* compiled from: storage_FileType.java */
    /* loaded from: classes3.dex */
    public static class a extends o {

        /* renamed from: c  reason: collision with root package name */
        public static int f56362c = -891180321;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56362c);
        }
    }

    /* compiled from: storage_FileType.java */
    /* loaded from: classes3.dex */
    public static class b extends o {

        /* renamed from: c  reason: collision with root package name */
        public static int f56363c = 8322574;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56363c);
        }
    }

    /* compiled from: storage_FileType.java */
    /* loaded from: classes3.dex */
    public static class c extends o {

        /* renamed from: c  reason: collision with root package name */
        public static int f56364c = 1258941372;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56364c);
        }
    }

    /* compiled from: storage_FileType.java */
    /* loaded from: classes3.dex */
    public static class d extends o {

        /* renamed from: c  reason: collision with root package name */
        public static int f56365c = 1384777335;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56365c);
        }
    }

    /* compiled from: storage_FileType.java */
    /* loaded from: classes3.dex */
    public static class e extends o {

        /* renamed from: c  reason: collision with root package name */
        public static int f56366c = -1278304028;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56366c);
        }
    }

    /* compiled from: storage_FileType.java */
    /* loaded from: classes3.dex */
    public static class f extends o {

        /* renamed from: c  reason: collision with root package name */
        public static int f56367c = 1086091090;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56367c);
        }
    }

    /* compiled from: storage_FileType.java */
    /* loaded from: classes3.dex */
    public static class g extends o {

        /* renamed from: c  reason: collision with root package name */
        public static int f56368c = -1373745011;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56368c);
        }
    }

    /* compiled from: storage_FileType.java */
    /* loaded from: classes3.dex */
    public static class h extends o {

        /* renamed from: c  reason: collision with root package name */
        public static int f56369c = 172975040;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56369c);
        }
    }

    /* compiled from: storage_FileType.java */
    /* loaded from: classes3.dex */
    public static class i extends o {

        /* renamed from: c  reason: collision with root package name */
        public static int f56370c = -1432995067;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56370c);
        }
    }

    /* compiled from: storage_FileType.java */
    /* loaded from: classes3.dex */
    public static class j extends o {

        /* renamed from: c  reason: collision with root package name */
        public static int f56371c = 276907596;

        @Override // com.tangxiaolv.telegramgallery.TL.m
        public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
            aVar.v(f56371c);
        }
    }

    public static o f(com.tangxiaolv.telegramgallery.TL.a aVar, int i4, boolean z9) {
        o iVar;
        switch (i4) {
            case -1432995067:
                iVar = new i();
                break;
            case -1373745011:
                iVar = new g();
                break;
            case -1278304028:
                iVar = new e();
                break;
            case -891180321:
                iVar = new a();
                break;
            case 8322574:
                iVar = new b();
                break;
            case 172975040:
                iVar = new h();
                break;
            case 276907596:
                iVar = new j();
                break;
            case 1086091090:
                iVar = new f();
                break;
            case 1258941372:
                iVar = new c();
                break;
            case 1384777335:
                iVar = new d();
                break;
            default:
                iVar = null;
                break;
        }
        if (iVar == null && z9) {
            throw new RuntimeException(String.format("can't parse magic %x in storage_FileType", Integer.valueOf(i4)));
        }
        if (iVar != null) {
            iVar.d(aVar, z9);
        }
        return iVar;
    }
}
