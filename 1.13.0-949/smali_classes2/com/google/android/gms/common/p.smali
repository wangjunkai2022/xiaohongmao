.class public final synthetic Lcom/google/android/gms/common/p;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/tasks/j;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/common/p;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/p;

    invoke-direct {v0}, Lcom/google/android/gms/common/p;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/p;->a:Lcom/google/android/gms/common/p;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/tasks/k;
    .locals 0

    check-cast p1, Ljava/util/Map;

    sget p1, Lcom/google/android/gms/common/e;->h:I

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/tasks/n;->g(Ljava/lang/Object;)Lcom/google/android/gms/tasks/k;

    move-result-object p1

    return-object p1
.end method
