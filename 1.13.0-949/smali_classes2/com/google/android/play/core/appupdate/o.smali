.class public final synthetic Lcom/google/android/play/core/appupdate/o;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/internal/o;


# static fields
.field public static final synthetic a:Lcom/google/android/play/core/appupdate/o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/appupdate/o;

    invoke-direct {v0}, Lcom/google/android/play/core/appupdate/o;-><init>()V

    sput-object v0, Lcom/google/android/play/core/appupdate/o;->a:Lcom/google/android/play/core/appupdate/o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/android/play/core/internal/c2;->x(Landroid/os/IBinder;)Lcom/google/android/play/core/internal/d2;

    move-result-object p1

    return-object p1
.end method
