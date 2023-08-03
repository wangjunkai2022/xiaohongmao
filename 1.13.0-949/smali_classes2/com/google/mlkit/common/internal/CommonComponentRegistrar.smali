.class public Lcom/google/mlkit/common/internal/CommonComponentRegistrar;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"

# interfaces
.implements Lcom/google/firebase/components/k;


# annotations
.annotation build Lu2/a;
.end annotation


# static fields
.field public static final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 13
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-class v0, Lcom/google/mlkit/common/internal/model/j;

    const-class v1, Lcom/google/mlkit/common/sdkinternal/a;

    const-class v2, Lcom/google/mlkit/common/model/e$a;

    const-class v3, Lcom/google/mlkit/common/sdkinternal/k;

    sget-object v4, Lcom/google/mlkit/common/sdkinternal/p;->c:Lcom/google/firebase/components/f;

    const-class v5, Lcom/google/mlkit/common/sdkinternal/model/d;

    .line 2
    invoke-static {v5}, Lcom/google/firebase/components/f;->a(Ljava/lang/Class;)Lcom/google/firebase/components/f$b;

    move-result-object v5

    .line 3
    invoke-static {v3}, Lcom/google/firebase/components/t;->j(Ljava/lang/Class;)Lcom/google/firebase/components/t;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/firebase/components/f$b;->b(Lcom/google/firebase/components/t;)Lcom/google/firebase/components/f$b;

    move-result-object v5

    sget-object v6, Lq3/a;->a:Lq3/a;

    .line 4
    invoke-virtual {v5, v6}, Lcom/google/firebase/components/f$b;->f(Lcom/google/firebase/components/j;)Lcom/google/firebase/components/f$b;

    move-result-object v5

    .line 5
    invoke-virtual {v5}, Lcom/google/firebase/components/f$b;->d()Lcom/google/firebase/components/f;

    move-result-object v5

    const-class v6, Lcom/google/mlkit/common/sdkinternal/l;

    .line 6
    invoke-static {v6}, Lcom/google/firebase/components/f;->a(Ljava/lang/Class;)Lcom/google/firebase/components/f$b;

    move-result-object v6

    sget-object v7, Lq3/b;->a:Lq3/b;

    .line 7
    invoke-virtual {v6, v7}, Lcom/google/firebase/components/f$b;->f(Lcom/google/firebase/components/j;)Lcom/google/firebase/components/f$b;

    move-result-object v6

    .line 8
    invoke-virtual {v6}, Lcom/google/firebase/components/f$b;->d()Lcom/google/firebase/components/f;

    move-result-object v6

    const-class v7, Lcom/google/mlkit/common/model/e;

    .line 9
    invoke-static {v7}, Lcom/google/firebase/components/f;->a(Ljava/lang/Class;)Lcom/google/firebase/components/f$b;

    move-result-object v7

    .line 10
    invoke-static {v2}, Lcom/google/firebase/components/t;->l(Ljava/lang/Class;)Lcom/google/firebase/components/t;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/firebase/components/f$b;->b(Lcom/google/firebase/components/t;)Lcom/google/firebase/components/f$b;

    move-result-object v7

    sget-object v8, Lq3/c;->a:Lq3/c;

    .line 11
    invoke-virtual {v7, v8}, Lcom/google/firebase/components/f$b;->f(Lcom/google/firebase/components/j;)Lcom/google/firebase/components/f$b;

    move-result-object v7

    .line 12
    invoke-virtual {v7}, Lcom/google/firebase/components/f$b;->d()Lcom/google/firebase/components/f;

    move-result-object v7

    const-class v8, Lcom/google/mlkit/common/sdkinternal/f;

    .line 13
    invoke-static {v8}, Lcom/google/firebase/components/f;->a(Ljava/lang/Class;)Lcom/google/firebase/components/f$b;

    move-result-object v8

    const-class v9, Lcom/google/mlkit/common/sdkinternal/l;

    .line 14
    invoke-static {v9}, Lcom/google/firebase/components/t;->k(Ljava/lang/Class;)Lcom/google/firebase/components/t;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/firebase/components/f$b;->b(Lcom/google/firebase/components/t;)Lcom/google/firebase/components/f$b;

    move-result-object v8

    sget-object v9, Lq3/d;->a:Lq3/d;

    .line 15
    invoke-virtual {v8, v9}, Lcom/google/firebase/components/f$b;->f(Lcom/google/firebase/components/j;)Lcom/google/firebase/components/f$b;

    move-result-object v8

    .line 16
    invoke-virtual {v8}, Lcom/google/firebase/components/f$b;->d()Lcom/google/firebase/components/f;

    move-result-object v8

    .line 17
    invoke-static {v1}, Lcom/google/firebase/components/f;->a(Ljava/lang/Class;)Lcom/google/firebase/components/f$b;

    move-result-object v9

    sget-object v10, Lq3/e;->a:Lq3/e;

    invoke-virtual {v9, v10}, Lcom/google/firebase/components/f$b;->f(Lcom/google/firebase/components/j;)Lcom/google/firebase/components/f$b;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/firebase/components/f$b;->d()Lcom/google/firebase/components/f;

    move-result-object v9

    const-class v10, Lcom/google/mlkit/common/sdkinternal/c$a;

    .line 18
    invoke-static {v10}, Lcom/google/firebase/components/f;->a(Ljava/lang/Class;)Lcom/google/firebase/components/f$b;

    move-result-object v10

    .line 19
    invoke-static {v1}, Lcom/google/firebase/components/t;->j(Ljava/lang/Class;)Lcom/google/firebase/components/t;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/google/firebase/components/f$b;->b(Lcom/google/firebase/components/t;)Lcom/google/firebase/components/f$b;

    move-result-object v1

    sget-object v10, Lq3/f;->a:Lq3/f;

    .line 20
    invoke-virtual {v1, v10}, Lcom/google/firebase/components/f$b;->f(Lcom/google/firebase/components/j;)Lcom/google/firebase/components/f$b;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/google/firebase/components/f$b;->d()Lcom/google/firebase/components/f;

    move-result-object v10

    .line 22
    invoke-static {v0}, Lcom/google/firebase/components/f;->a(Ljava/lang/Class;)Lcom/google/firebase/components/f$b;

    move-result-object v1

    .line 23
    invoke-static {v3}, Lcom/google/firebase/components/t;->j(Ljava/lang/Class;)Lcom/google/firebase/components/t;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/firebase/components/f$b;->b(Lcom/google/firebase/components/t;)Lcom/google/firebase/components/f$b;

    move-result-object v1

    sget-object v3, Lq3/g;->a:Lq3/g;

    .line 24
    invoke-virtual {v1, v3}, Lcom/google/firebase/components/f$b;->f(Lcom/google/firebase/components/j;)Lcom/google/firebase/components/f$b;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/google/firebase/components/f$b;->d()Lcom/google/firebase/components/f;

    move-result-object v11

    .line 26
    invoke-static {v2}, Lcom/google/firebase/components/f;->h(Ljava/lang/Class;)Lcom/google/firebase/components/f$b;

    move-result-object v1

    .line 27
    invoke-static {v0}, Lcom/google/firebase/components/t;->k(Ljava/lang/Class;)Lcom/google/firebase/components/t;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/components/f$b;->b(Lcom/google/firebase/components/t;)Lcom/google/firebase/components/f$b;

    move-result-object v0

    sget-object v1, Lq3/h;->a:Lq3/h;

    .line 28
    invoke-virtual {v0, v1}, Lcom/google/firebase/components/f$b;->f(Lcom/google/firebase/components/j;)Lcom/google/firebase/components/f$b;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/google/firebase/components/f$b;->d()Lcom/google/firebase/components/f;

    move-result-object v12

    .line 30
    invoke-static/range {v4 .. v12}, Lcom/google/android/gms/internal/mlkit_common/zzan;->zzk(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzan;

    move-result-object v0

    return-object v0
.end method
