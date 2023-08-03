.class public Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;
.super Ljava/lang/Object;
.source "com.google.mlkit:language-id-common@@16.0.0"

# interfaces
.implements Lcom/google/mlkit/nl/languageid/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/mlkit/nl/languageid/b;

.field private final b:Lcom/google/android/gms/internal/mlkit_language_id_common/ka;

.field private final c:Lcom/google/android/gms/internal/mlkit_language_id_common/ma;

.field private final d:Ljava/util/concurrent/Executor;

.field private final e:Ljava/util/concurrent/atomic/AtomicReference;

.field private final f:Lcom/google/android/gms/tasks/b;

.field private final g:Lcom/google/android/gms/internal/mlkit_language_id_common/zzht;


# direct methods
.method private constructor <init>(Lcom/google/mlkit/nl/languageid/b;Lcom/google/mlkit/nl/languageid/internal/i;Lcom/google/android/gms/internal/mlkit_language_id_common/ka;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->a:Lcom/google/mlkit/nl/languageid/b;

    iput-object p3, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->b:Lcom/google/android/gms/internal/mlkit_language_id_common/ka;

    iput-object p4, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->d:Ljava/util/concurrent/Executor;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    new-instance p1, Lcom/google/android/gms/tasks/b;

    invoke-direct {p1}, Lcom/google/android/gms/tasks/b;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->f:Lcom/google/android/gms/tasks/b;

    .line 3
    invoke-virtual {p2}, Lcom/google/mlkit/nl/languageid/internal/i;->m()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/mlkit_language_id_common/zzht;->zzc:Lcom/google/android/gms/internal/mlkit_language_id_common/zzht;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_language_id_common/zzht;->zzb:Lcom/google/android/gms/internal/mlkit_language_id_common/zzht;

    :goto_0
    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->g:Lcom/google/android/gms/internal/mlkit_language_id_common/zzht;

    .line 4
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/k;->c()Lcom/google/mlkit/common/sdkinternal/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/mlkit/common/sdkinternal/k;->b()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/ma;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/mlkit_language_id_common/ma;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->c:Lcom/google/android/gms/internal/mlkit_language_id_common/ma;

    return-void
.end method

.method public static a(Lcom/google/mlkit/nl/languageid/b;Lcom/google/mlkit/nl/languageid/internal/i;Lcom/google/android/gms/internal/mlkit_language_id_common/ka;Lcom/google/mlkit/common/sdkinternal/f;)Lcom/google/mlkit/nl/languageid/c;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;

    invoke-virtual {p0}, Lcom/google/mlkit/nl/languageid/b;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/google/mlkit/common/sdkinternal/f;->a(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;-><init>(Lcom/google/mlkit/nl/languageid/b;Lcom/google/mlkit/nl/languageid/internal/i;Lcom/google/android/gms/internal/mlkit_language_id_common/ka;Ljava/util/concurrent/Executor;)V

    iget-object p0, v0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->b:Lcom/google/android/gms/internal/mlkit_language_id_common/ka;

    new-instance p1, Lcom/google/android/gms/internal/mlkit_language_id_common/a7;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/a7;-><init>()V

    iget-object p2, v0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->g:Lcom/google/android/gms/internal/mlkit_language_id_common/zzht;

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/a7;->c(Lcom/google/android/gms/internal/mlkit_language_id_common/zzht;)Lcom/google/android/gms/internal/mlkit_language_id_common/a7;

    new-instance p2, Lcom/google/android/gms/internal/mlkit_language_id_common/w7;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/w7;-><init>()V

    iget-object p3, v0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->a:Lcom/google/mlkit/nl/languageid/b;

    .line 3
    invoke-virtual {p3}, Lcom/google/mlkit/nl/languageid/b;->a()Ljava/lang/Float;

    move-result-object p3

    invoke-static {p3}, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->k(Ljava/lang/Float;)Lcom/google/android/gms/internal/mlkit_language_id_common/y6;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_language_id_common/w7;->f(Lcom/google/android/gms/internal/mlkit_language_id_common/y6;)Lcom/google/android/gms/internal/mlkit_language_id_common/w7;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/w7;->i()Lcom/google/android/gms/internal/mlkit_language_id_common/i8;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/a7;->e(Lcom/google/android/gms/internal/mlkit_language_id_common/i8;)Lcom/google/android/gms/internal/mlkit_language_id_common/a7;

    const/4 p2, 0x1

    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/na;->f(Lcom/google/android/gms/internal/mlkit_language_id_common/a7;I)Lcom/google/android/gms/internal/mlkit_language_id_common/ba;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/mlkit_language_id_common/zzhv;->zzw:Lcom/google/android/gms/internal/mlkit_language_id_common/zzhv;

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->c(Lcom/google/android/gms/internal/mlkit_language_id_common/ba;Lcom/google/android/gms/internal/mlkit_language_id_common/zzhv;)V

    iget-object p0, v0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mlkit/nl/languageid/internal/i;

    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/n;->d()V

    return-object v0
.end method

.method private final i(JZLcom/google/android/gms/internal/mlkit_language_id_common/g8;Lcom/google/android/gms/internal/mlkit_language_id_common/c8;Lcom/google/android/gms/internal/mlkit_language_id_common/zzhu;)V
    .locals 19
    .param p4    # Lcom/google/android/gms/internal/mlkit_language_id_common/g8;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/internal/mlkit_language_id_common/c8;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v8, p0

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v9, v0, p1

    new-instance v11, Lcom/google/mlkit/nl/languageid/internal/h;

    move-object v0, v11

    move-object/from16 v1, p0

    move-wide v2, v9

    move/from16 v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/mlkit/nl/languageid/internal/h;-><init>(Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;JZLcom/google/android/gms/internal/mlkit_language_id_common/zzhu;Lcom/google/android/gms/internal/mlkit_language_id_common/g8;Lcom/google/android/gms/internal/mlkit_language_id_common/c8;)V

    iget-object v0, v8, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->b:Lcom/google/android/gms/internal/mlkit_language_id_common/ka;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/mlkit_language_id_common/zzhv;->zzv:Lcom/google/android/gms/internal/mlkit_language_id_common/zzhv;

    invoke-virtual {v0, v11, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->e(Lcom/google/mlkit/nl/languageid/internal/h;Lcom/google/android/gms/internal/mlkit_language_id_common/zzhv;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    iget-object v12, v8, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->c:Lcom/google/android/gms/internal/mlkit_language_id_common/ma;

    iget-object v0, v8, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->g:Lcom/google/android/gms/internal/mlkit_language_id_common/zzht;

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/mlkit_language_id_common/zzht;->zzc:Lcom/google/android/gms/internal/mlkit_language_id_common/zzht;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x601b

    const/16 v13, 0x601b

    goto :goto_0

    :cond_0
    const/16 v0, 0x601a

    const/16 v13, 0x601a

    .line 5
    :goto_0
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/internal/mlkit_language_id_common/zzhu;->zza()I

    move-result v14

    sub-long v15, v17, v9

    .line 6
    invoke-virtual/range {v12 .. v18}, Lcom/google/android/gms/internal/mlkit_language_id_common/ma;->c(IIJJ)V

    return-void
.end method

.method private static final k(Ljava/lang/Float;)Lcom/google/android/gms/internal/mlkit_language_id_common/y6;
    .locals 1
    .param p0    # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/w6;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/w6;-><init>()V

    if-nez p0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/w6;->a(Ljava/lang/Float;)Lcom/google/android/gms/internal/mlkit_language_id_common/w6;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/w6;->b()Lcom/google/android/gms/internal/mlkit_language_id_common/y6;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final Z(Ljava/lang/String;)Lcom/google/android/gms/tasks/k;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/k<",
            "Ljava/util/List<",
            "Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;",
            ">;>;"
        }
    .end annotation

    const-string v0, "Text can not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/nl/languageid/internal/i;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "LanguageIdentification has been closed"

    .line 3
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/u;->r(ZLjava/lang/Object;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/n;->b()Z

    move-result v2

    iget-object v3, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->d:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/mlkit/nl/languageid/internal/f;

    xor-int/2addr v1, v2

    invoke-direct {v4, p0, v0, p1, v1}, Lcom/google/mlkit/nl/languageid/internal/f;-><init>(Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;Lcom/google/mlkit/nl/languageid/internal/i;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->f:Lcom/google/android/gms/tasks/b;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/b;->b()Lcom/google/android/gms/tasks/a;

    move-result-object p1

    .line 6
    invoke-virtual {v0, v3, v4, p1}, Lcom/google/mlkit/common/sdkinternal/n;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/a;)Lcom/google/android/gms/tasks/k;

    move-result-object p1

    return-object p1
.end method

.method final synthetic b(JZLcom/google/android/gms/internal/mlkit_language_id_common/zzhu;Lcom/google/android/gms/internal/mlkit_language_id_common/g8;Lcom/google/android/gms/internal/mlkit_language_id_common/c8;)Lcom/google/android/gms/internal/mlkit_language_id_common/ba;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/w7;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/w7;-><init>()V

    iget-object v1, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->a:Lcom/google/mlkit/nl/languageid/b;

    invoke-virtual {v1}, Lcom/google/mlkit/nl/languageid/b;->a()Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->k(Ljava/lang/Float;)Lcom/google/android/gms/internal/mlkit_language_id_common/y6;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/w7;->f(Lcom/google/android/gms/internal/mlkit_language_id_common/y6;)Lcom/google/android/gms/internal/mlkit_language_id_common/w7;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_language_id_common/q6;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/q6;-><init>()V

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/q6;->a(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_language_id_common/q6;

    .line 3
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/q6;->c(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_language_id_common/q6;

    .line 4
    invoke-virtual {v1, p4}, Lcom/google/android/gms/internal/mlkit_language_id_common/q6;->b(Lcom/google/android/gms/internal/mlkit_language_id_common/zzhu;)Lcom/google/android/gms/internal/mlkit_language_id_common/q6;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/q6;->d()Lcom/google/android/gms/internal/mlkit_language_id_common/s6;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/w7;->e(Lcom/google/android/gms/internal/mlkit_language_id_common/s6;)Lcom/google/android/gms/internal/mlkit_language_id_common/w7;

    if-eqz p5, :cond_0

    .line 6
    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/mlkit_language_id_common/w7;->d(Lcom/google/android/gms/internal/mlkit_language_id_common/g8;)Lcom/google/android/gms/internal/mlkit_language_id_common/w7;

    :cond_0
    if-eqz p6, :cond_1

    .line 7
    invoke-virtual {v0, p6}, Lcom/google/android/gms/internal/mlkit_language_id_common/w7;->c(Lcom/google/android/gms/internal/mlkit_language_id_common/c8;)Lcom/google/android/gms/internal/mlkit_language_id_common/w7;

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/mlkit_language_id_common/a7;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/a7;-><init>()V

    iget-object p2, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->g:Lcom/google/android/gms/internal/mlkit_language_id_common/zzht;

    .line 8
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/a7;->c(Lcom/google/android/gms/internal/mlkit_language_id_common/zzht;)Lcom/google/android/gms/internal/mlkit_language_id_common/a7;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/w7;->i()Lcom/google/android/gms/internal/mlkit_language_id_common/i8;

    move-result-object p2

    .line 9
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/a7;->e(Lcom/google/android/gms/internal/mlkit_language_id_common/i8;)Lcom/google/android/gms/internal/mlkit_language_id_common/a7;

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/na;->e(Lcom/google/android/gms/internal/mlkit_language_id_common/a7;)Lcom/google/android/gms/internal/mlkit_language_id_common/ba;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/nl/languageid/internal/i;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->f:Lcom/google/android/gms/tasks/b;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/b;->a()V

    iget-object v1, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->d:Ljava/util/concurrent/Executor;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/mlkit/common/sdkinternal/n;->f(Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->b:Lcom/google/android/gms/internal/mlkit_language_id_common/ka;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_language_id_common/a7;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/a7;-><init>()V

    iget-object v2, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->g:Lcom/google/android/gms/internal/mlkit_language_id_common/zzht;

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/a7;->c(Lcom/google/android/gms/internal/mlkit_language_id_common/zzht;)Lcom/google/android/gms/internal/mlkit_language_id_common/a7;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_language_id_common/w7;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/w7;-><init>()V

    iget-object v3, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->a:Lcom/google/mlkit/nl/languageid/b;

    .line 5
    invoke-virtual {v3}, Lcom/google/mlkit/nl/languageid/b;->a()Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->k(Ljava/lang/Float;)Lcom/google/android/gms/internal/mlkit_language_id_common/y6;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_language_id_common/w7;->f(Lcom/google/android/gms/internal/mlkit_language_id_common/y6;)Lcom/google/android/gms/internal/mlkit_language_id_common/w7;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/w7;->i()Lcom/google/android/gms/internal/mlkit_language_id_common/i8;

    move-result-object v2

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/a7;->e(Lcom/google/android/gms/internal/mlkit_language_id_common/i8;)Lcom/google/android/gms/internal/mlkit_language_id_common/a7;

    const/4 v2, 0x1

    .line 7
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/na;->f(Lcom/google/android/gms/internal/mlkit_language_id_common/a7;I)Lcom/google/android/gms/internal/mlkit_language_id_common/ba;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_language_id_common/zzhv;->zzy:Lcom/google/android/gms/internal/mlkit_language_id_common/zzhv;

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->c(Lcom/google/android/gms/internal/mlkit_language_id_common/ba;Lcom/google/android/gms/internal/mlkit_language_id_common/zzhv;)V

    return-void
.end method

.method final synthetic d(Lcom/google/mlkit/nl/languageid/internal/i;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->a:Lcom/google/mlkit/nl/languageid/b;

    invoke-virtual {v0}, Lcom/google/mlkit/nl/languageid/b;->a()Ljava/lang/Float;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    .line 5
    :goto_0
    invoke-virtual {p1, p2, v0}, Lcom/google/mlkit/nl/languageid/internal/i;->j(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p2, 0x0

    :goto_1
    move-object v6, p2

    goto :goto_2

    .line 6
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/mlkit_language_id_common/a8;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/a8;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/x7;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/x7;-><init>()V

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/x7;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_language_id_common/x7;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/x7;->c()Lcom/google/android/gms/internal/mlkit_language_id_common/z7;

    move-result-object v0

    .line 8
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/a8;->b(Lcom/google/android/gms/internal/mlkit_language_id_common/z7;)Lcom/google/android/gms/internal/mlkit_language_id_common/a8;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/a8;->c()Lcom/google/android/gms/internal/mlkit_language_id_common/c8;

    move-result-object p2

    goto :goto_1

    :goto_2
    const/4 v5, 0x0

    .line 9
    sget-object v7, Lcom/google/android/gms/internal/mlkit_language_id_common/zzhu;->zza:Lcom/google/android/gms/internal/mlkit_language_id_common/zzhu;

    move-object v1, p0

    move-wide v2, v8

    move v4, p3

    .line 10
    invoke-direct/range {v1 .. v7}, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->i(JZLcom/google/android/gms/internal/mlkit_language_id_common/g8;Lcom/google/android/gms/internal/mlkit_language_id_common/c8;Lcom/google/android/gms/internal/mlkit_language_id_common/zzhu;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 11
    sget-object v7, Lcom/google/android/gms/internal/mlkit_language_id_common/zzhu;->zzV:Lcom/google/android/gms/internal/mlkit_language_id_common/zzhu;

    move-object v1, p0

    move-wide v2, v8

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->i(JZLcom/google/android/gms/internal/mlkit_language_id_common/g8;Lcom/google/android/gms/internal/mlkit_language_id_common/c8;Lcom/google/android/gms/internal/mlkit_language_id_common/zzhu;)V

    .line 12
    throw p1
.end method

.method final synthetic h(Lcom/google/mlkit/nl/languageid/internal/i;Ljava/lang/String;Z)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->a:Lcom/google/mlkit/nl/languageid/b;

    invoke-virtual {v0}, Lcom/google/mlkit/nl/languageid/b;->a()Ljava/lang/Float;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x3c23d70a    # 0.01f

    .line 5
    :goto_0
    invoke-virtual {p1, p2, v0}, Lcom/google/mlkit/nl/languageid/internal/i;->k(Ljava/lang/String;F)Ljava/util/List;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/mlkit_language_id_common/cb;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/cb;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_language_id_common/x7;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/x7;-><init>()V

    .line 7
    invoke-virtual {v1}, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_language_id_common/x7;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_language_id_common/x7;

    .line 8
    invoke-virtual {v1}, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->a()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/x7;->a(Ljava/lang/Float;)Lcom/google/android/gms/internal/mlkit_language_id_common/x7;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/x7;->c()Lcom/google/android/gms/internal/mlkit_language_id_common/z7;

    move-result-object v1

    .line 9
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/cb;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id_common/cb;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/d8;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/d8;-><init>()V

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/cb;->d()Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/d8;->b(Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;)Lcom/google/android/gms/internal/mlkit_language_id_common/d8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/d8;->c()Lcom/google/android/gms/internal/mlkit_language_id_common/g8;

    move-result-object v5

    const/4 v6, 0x0

    .line 11
    sget-object v7, Lcom/google/android/gms/internal/mlkit_language_id_common/zzhu;->zza:Lcom/google/android/gms/internal/mlkit_language_id_common/zzhu;

    move-object v1, p0

    move-wide v2, v8

    move v4, p3

    .line 12
    invoke-direct/range {v1 .. v7}, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->i(JZLcom/google/android/gms/internal/mlkit_language_id_common/g8;Lcom/google/android/gms/internal/mlkit_language_id_common/c8;Lcom/google/android/gms/internal/mlkit_language_id_common/zzhu;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 13
    sget-object v7, Lcom/google/android/gms/internal/mlkit_language_id_common/zzhu;->zzV:Lcom/google/android/gms/internal/mlkit_language_id_common/zzhu;

    move-object v1, p0

    move-wide v2, v8

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->i(JZLcom/google/android/gms/internal/mlkit_language_id_common/g8;Lcom/google/android/gms/internal/mlkit_language_id_common/c8;Lcom/google/android/gms/internal/mlkit_language_id_common/zzhu;)V

    .line 14
    throw p1
.end method

.method public final i0(Ljava/lang/String;)Lcom/google/android/gms/tasks/k;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/k<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "Text can not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/nl/languageid/internal/i;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "LanguageIdentification has been closed"

    .line 3
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/u;->r(ZLjava/lang/Object;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/n;->b()Z

    move-result v2

    iget-object v3, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->d:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/mlkit/nl/languageid/internal/g;

    xor-int/2addr v1, v2

    invoke-direct {v4, p0, v0, p1, v1}, Lcom/google/mlkit/nl/languageid/internal/g;-><init>(Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;Lcom/google/mlkit/nl/languageid/internal/i;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->f:Lcom/google/android/gms/tasks/b;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/b;->b()Lcom/google/android/gms/tasks/a;

    move-result-object p1

    .line 6
    invoke-virtual {v0, v3, v4, p1}, Lcom/google/mlkit/common/sdkinternal/n;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/a;)Lcom/google/android/gms/tasks/k;

    move-result-object p1

    return-object p1
.end method
