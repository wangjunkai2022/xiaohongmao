.class public final Lcom/squareup/moshi/r;
.super Ljava/lang/Object;
.source "KotlinJsonAdapter.kt"

# interfaces
.implements Lcom/squareup/moshi/h$e;


# annotations
.annotation runtime Lkotlin/Deprecated;
    message = "this moved to avoid a package name conflict in the Java Platform Module System."
    replaceWith = .subannotation Lkotlin/ReplaceWith;
        expression = "com.squareup.moshi.kotlin.reflect.KotlinJsonAdapterFactory"
        imports = {}
    .end subannotation
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0010\u001b\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000eJ]\u0010\u000c\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000b2\u000e\u0010\u0004\u001a\n \u0003*\u0004\u0018\u00010\u00020\u00022,\u0010\u0008\u001a(\u0012\u000e\u0008\u0001\u0012\n \u0003*\u0004\u0018\u00010\u00060\u0006 \u0003*\u0012\u0012\u000c\u0012\n \u0003*\u0004\u0018\u00010\u00060\u0006\u0018\u00010\u00070\u00052\u000e\u0010\n\u001a\n \u0003*\u0004\u0018\u00010\t0\tH\u0097\u0001\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/squareup/moshi/r;",
        "Lcom/squareup/moshi/h$e;",
        "Ljava/lang/reflect/Type;",
        "kotlin.jvm.PlatformType",
        "p0",
        "",
        "",
        "",
        "p1",
        "Lcom/squareup/moshi/u;",
        "p2",
        "Lcom/squareup/moshi/h;",
        "create",
        "<init>",
        "()V",
        "reflect"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field private final synthetic a:Lv5/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lv5/b;

    invoke-direct {v0}, Lv5/b;-><init>()V

    iput-object v0, p0, Lcom/squareup/moshi/r;->a:Lv5/b;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/reflect/Type;Ljava/util/Set;Lcom/squareup/moshi/u;)Lcom/squareup/moshi/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/squareup/moshi/u;",
            ")",
            "Lcom/squareup/moshi/h<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/squareup/moshi/r;->a:Lv5/b;

    const-string v1, "create(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, p3}, Lv5/b;->create(Ljava/lang/reflect/Type;Ljava/util/Set;Lcom/squareup/moshi/u;)Lcom/squareup/moshi/h;

    move-result-object p1

    return-object p1
.end method
