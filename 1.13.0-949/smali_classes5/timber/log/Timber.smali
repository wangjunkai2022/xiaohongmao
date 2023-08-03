.class public final Ltimber/log/Timber;
.super Ljava/lang/Object;
.source "Timber.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltimber/log/Timber$c;,
        Ltimber/log/Timber$a;,
        Ltimber/log/Timber$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0006\u0018\u0000 \u00042\u00020\u0001:\u0003\u0004\u0005\u0006B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0007"
    }
    d2 = {
        "Ltimber/log/Timber;",
        "",
        "<init>",
        "()V",
        "a",
        "b",
        "c",
        "timber_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final a:Ltimber/log/Timber$b;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ltimber/log/Timber$c;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private static volatile c:[Ltimber/log/Timber$c;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltimber/log/Timber$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltimber/log/Timber$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ltimber/log/Timber;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    new-array v0, v0, [Ltimber/log/Timber$c;

    .line 2
    sput-object v0, Ltimber/log/Timber;->c:[Ltimber/log/Timber$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static varargs A(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/f;
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    invoke-virtual {v0, p0, p1}, Ltimber/log/Timber$b;->x(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static B(Ljava/lang/Throwable;)V
    .locals 1
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    invoke-virtual {v0, p0}, Ltimber/log/Timber$b;->y(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs C(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/f;
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    invoke-virtual {v0, p0, p1, p2}, Ltimber/log/Timber$b;->z(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs D(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/f;
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    invoke-virtual {v0, p0, p1}, Ltimber/log/Timber$b;->A(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static E(Ljava/lang/Throwable;)V
    .locals 1
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    invoke-virtual {v0, p0}, Ltimber/log/Timber$b;->B(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs F(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/f;
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    invoke-virtual {v0, p0, p1, p2}, Ltimber/log/Timber$b;->C(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic a()[Ltimber/log/Timber$c;
    .locals 1

    sget-object v0, Ltimber/log/Timber;->c:[Ltimber/log/Timber$c;

    return-object v0
.end method

.method public static final synthetic b()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Ltimber/log/Timber;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static final synthetic c([Ltimber/log/Timber$c;)V
    .locals 0

    sput-object p0, Ltimber/log/Timber;->c:[Ltimber/log/Timber$c;

    return-void
.end method

.method public static d()Ltimber/log/Timber$c;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    invoke-virtual {v0}, Ltimber/log/Timber$b;->D()Ltimber/log/Timber$c;

    move-result-object v0

    return-object v0
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/f;
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    invoke-virtual {v0, p0, p1}, Ltimber/log/Timber$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static f(Ljava/lang/Throwable;)V
    .locals 1
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    invoke-virtual {v0, p0}, Ltimber/log/Timber$b;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs g(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/f;
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    invoke-virtual {v0, p0, p1, p2}, Ltimber/log/Timber$b;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs h(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/f;
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    invoke-virtual {v0, p0, p1}, Ltimber/log/Timber$b;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static i(Ljava/lang/Throwable;)V
    .locals 1
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    invoke-virtual {v0, p0}, Ltimber/log/Timber$b;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs j(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/f;
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    invoke-virtual {v0, p0, p1, p2}, Ltimber/log/Timber$b;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static final k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltimber/log/Timber$c;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    invoke-virtual {v0}, Ltimber/log/Timber$b;->E()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs l(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/f;
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    invoke-virtual {v0, p0, p1}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static m(Ljava/lang/Throwable;)V
    .locals 1
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    invoke-virtual {v0, p0}, Ltimber/log/Timber$b;->l(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs n(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/f;
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    invoke-virtual {v0, p0, p1, p2}, Ltimber/log/Timber$b;->m(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs o(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/f;
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    invoke-virtual {v0, p0, p1, p2}, Ltimber/log/Timber$b;->q(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static p(ILjava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    invoke-virtual {v0, p0, p1}, Ltimber/log/Timber$b;->r(ILjava/lang/Throwable;)V

    return-void
.end method

.method public static varargs q(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/f;
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    invoke-virtual {v0, p0, p1, p2, p3}, Ltimber/log/Timber$b;->s(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static final r(Ltimber/log/Timber$c;)V
    .locals 1
    .param p0    # Ltimber/log/Timber$c;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    invoke-virtual {v0, p0}, Ltimber/log/Timber$b;->F(Ltimber/log/Timber$c;)V

    return-void
.end method

.method public static final varargs s([Ltimber/log/Timber$c;)V
    .locals 1
    .param p0    # [Ltimber/log/Timber$c;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    invoke-virtual {v0, p0}, Ltimber/log/Timber$b;->G([Ltimber/log/Timber$c;)V

    return-void
.end method

.method public static final t(Ljava/lang/String;)Ltimber/log/Timber$c;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    invoke-virtual {v0, p0}, Ltimber/log/Timber$b;->H(Ljava/lang/String;)Ltimber/log/Timber$c;

    move-result-object p0

    return-object p0
.end method

.method public static final u()I
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "treeCount"
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    invoke-virtual {v0}, Ltimber/log/Timber$b;->I()I

    move-result v0

    return v0
.end method

.method public static final v(Ltimber/log/Timber$c;)V
    .locals 1
    .param p0    # Ltimber/log/Timber$c;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    invoke-virtual {v0, p0}, Ltimber/log/Timber$b;->J(Ltimber/log/Timber$c;)V

    return-void
.end method

.method public static final w()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    invoke-virtual {v0}, Ltimber/log/Timber$b;->K()V

    return-void
.end method

.method public static varargs x(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/f;
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    invoke-virtual {v0, p0, p1}, Ltimber/log/Timber$b;->u(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static y(Ljava/lang/Throwable;)V
    .locals 1
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    invoke-virtual {v0, p0}, Ltimber/log/Timber$b;->v(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs z(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/f;
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    invoke-virtual {v0, p0, p1, p2}, Ltimber/log/Timber$b;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
