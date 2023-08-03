.class abstract Lcom/posthog/android/h;
.super Ljava/lang/Object;
.source "IntegrationOperation.java"


# static fields
.field static final a:Lcom/posthog/android/h;

.field static final b:Lcom/posthog/android/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/posthog/android/h$d;

    invoke-direct {v0}, Lcom/posthog/android/h$d;-><init>()V

    sput-object v0, Lcom/posthog/android/h;->a:Lcom/posthog/android/h;

    .line 2
    new-instance v0, Lcom/posthog/android/h$e;

    invoke-direct {v0}, Lcom/posthog/android/h$e;-><init>()V

    sput-object v0, Lcom/posthog/android/h;->b:Lcom/posthog/android/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/posthog/android/h$f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/posthog/android/h;-><init>()V

    return-void
.end method

.method static a(Lcom/posthog/android/payloads/a;)Lcom/posthog/android/h;
    .locals 1

    new-instance v0, Lcom/posthog/android/h$b;

    invoke-direct {v0, p0}, Lcom/posthog/android/h$b;-><init>(Lcom/posthog/android/payloads/a;)V

    return-object v0
.end method

.method static b(Lcom/posthog/android/payloads/b;)Lcom/posthog/android/h;
    .locals 1

    new-instance v0, Lcom/posthog/android/h$n;

    invoke-direct {v0, p0}, Lcom/posthog/android/h$n;-><init>(Lcom/posthog/android/payloads/b;)V

    return-object v0
.end method

.method static c(Lcom/posthog/android/payloads/c;)Lcom/posthog/android/h;
    .locals 1

    new-instance v0, Lcom/posthog/android/h$c;

    invoke-direct {v0, p0}, Lcom/posthog/android/h$c;-><init>(Lcom/posthog/android/payloads/c;)V

    return-object v0
.end method

.method static d(Lcom/posthog/android/payloads/d;)Lcom/posthog/android/h;
    .locals 1

    new-instance v0, Lcom/posthog/android/h$m;

    invoke-direct {v0, p0}, Lcom/posthog/android/h$m;-><init>(Lcom/posthog/android/payloads/d;)V

    return-object v0
.end method

.method static e(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/posthog/android/h;
    .locals 1

    new-instance v0, Lcom/posthog/android/h$f;

    invoke-direct {v0, p0, p1}, Lcom/posthog/android/h$f;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-object v0
.end method

.method static f(Landroid/app/Activity;)Lcom/posthog/android/h;
    .locals 1

    new-instance v0, Lcom/posthog/android/h$l;

    invoke-direct {v0, p0}, Lcom/posthog/android/h$l;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method static g(Landroid/app/Activity;)Lcom/posthog/android/h;
    .locals 1

    new-instance v0, Lcom/posthog/android/h$i;

    invoke-direct {v0, p0}, Lcom/posthog/android/h$i;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method static h(Landroid/app/Activity;)Lcom/posthog/android/h;
    .locals 1

    new-instance v0, Lcom/posthog/android/h$h;

    invoke-direct {v0, p0}, Lcom/posthog/android/h$h;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method static i(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/posthog/android/h;
    .locals 1

    new-instance v0, Lcom/posthog/android/h$k;

    invoke-direct {v0, p0, p1}, Lcom/posthog/android/h$k;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-object v0
.end method

.method static j(Landroid/app/Activity;)Lcom/posthog/android/h;
    .locals 1

    new-instance v0, Lcom/posthog/android/h$g;

    invoke-direct {v0, p0}, Lcom/posthog/android/h$g;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method static k(Landroid/app/Activity;)Lcom/posthog/android/h;
    .locals 1

    new-instance v0, Lcom/posthog/android/h$j;

    invoke-direct {v0, p0}, Lcom/posthog/android/h$j;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method static m(Lcom/posthog/android/payloads/e;)Lcom/posthog/android/h;
    .locals 1

    new-instance v0, Lcom/posthog/android/h$a;

    invoke-direct {v0, p0}, Lcom/posthog/android/h$a;-><init>(Lcom/posthog/android/payloads/e;)V

    return-object v0
.end method


# virtual methods
.method abstract l(Lcom/posthog/android/g;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/posthog/android/g<",
            "*>;)V"
        }
    .end annotation
.end method
