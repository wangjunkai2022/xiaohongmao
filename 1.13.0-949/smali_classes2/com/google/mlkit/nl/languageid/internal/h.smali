.class public final synthetic Lcom/google/mlkit/nl/languageid/internal/h;
.super Ljava/lang/Object;
.source "com.google.mlkit:language-id-common@@16.0.0"


# instance fields
.field public final synthetic a:Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;

.field public final synthetic b:J

.field public final synthetic c:Z

.field public final synthetic d:Lcom/google/android/gms/internal/mlkit_language_id_common/zzhu;

.field public final synthetic e:Lcom/google/android/gms/internal/mlkit_language_id_common/g8;

.field public final synthetic f:Lcom/google/android/gms/internal/mlkit_language_id_common/c8;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;JZLcom/google/android/gms/internal/mlkit_language_id_common/zzhu;Lcom/google/android/gms/internal/mlkit_language_id_common/g8;Lcom/google/android/gms/internal/mlkit_language_id_common/c8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/internal/h;->a:Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;

    iput-wide p2, p0, Lcom/google/mlkit/nl/languageid/internal/h;->b:J

    iput-boolean p4, p0, Lcom/google/mlkit/nl/languageid/internal/h;->c:Z

    iput-object p5, p0, Lcom/google/mlkit/nl/languageid/internal/h;->d:Lcom/google/android/gms/internal/mlkit_language_id_common/zzhu;

    iput-object p6, p0, Lcom/google/mlkit/nl/languageid/internal/h;->e:Lcom/google/android/gms/internal/mlkit_language_id_common/g8;

    iput-object p7, p0, Lcom/google/mlkit/nl/languageid/internal/h;->f:Lcom/google/android/gms/internal/mlkit_language_id_common/c8;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/mlkit_language_id_common/ba;
    .locals 7

    iget-object v0, p0, Lcom/google/mlkit/nl/languageid/internal/h;->a:Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;

    iget-wide v1, p0, Lcom/google/mlkit/nl/languageid/internal/h;->b:J

    iget-boolean v3, p0, Lcom/google/mlkit/nl/languageid/internal/h;->c:Z

    iget-object v4, p0, Lcom/google/mlkit/nl/languageid/internal/h;->d:Lcom/google/android/gms/internal/mlkit_language_id_common/zzhu;

    iget-object v5, p0, Lcom/google/mlkit/nl/languageid/internal/h;->e:Lcom/google/android/gms/internal/mlkit_language_id_common/g8;

    iget-object v6, p0, Lcom/google/mlkit/nl/languageid/internal/h;->f:Lcom/google/android/gms/internal/mlkit_language_id_common/c8;

    invoke-virtual/range {v0 .. v6}, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->b(JZLcom/google/android/gms/internal/mlkit_language_id_common/zzhu;Lcom/google/android/gms/internal/mlkit_language_id_common/g8;Lcom/google/android/gms/internal/mlkit_language_id_common/c8;)Lcom/google/android/gms/internal/mlkit_language_id_common/ba;

    move-result-object v0

    return-object v0
.end method
