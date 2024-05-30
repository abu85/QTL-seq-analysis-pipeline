We need conda environment or manual installation to run the qtlseq analysis pipeline
# 1. Log in to Uppmax
```
ssh userid@rackham.uppmax.uu.se
```
enter password

# 2. check the if you have conda envirionment
```conda env list```
probably you do not have one
install one

# 3. download & install qtlseq qithub pipeline
```
conda install -c bioconda qtlseq
```
did not work out, check all the env

```
conda env list

remove all env

conda deactivate
conda env remove -n <environment_name> --all

conda env remove -n /sw/apps/bioinfo/qiime2/2018.11.0/rackham/conda --all
conda env list
conda deactivate
conda env list
conda env remove -n base --all
conda env remove -n base
conda deactivate
conda env remove -n base
conda activate
conda deactivate
conda env remove -n base
conda activate mamba
conda env list
```
try now again

```
conda install -c bioconda qtlseq
conda install -p "/sw/apps/bioinfo/qiime2/2018.11.0/rackham/conda" "conda>=22.9"
conda env list
conda create -n qtlseq python=3 qtlseq
```
did not worked, may install manually

# 3. Git clone
```
git clone https://github.com/YuSugihara/QTL-seq.git
cd QTL-seq
pip install -e .
ml pip
cd QTL-seq
ml bioifo-tools pip python3

pip install --upgrade pip
pip install -e .
qtlseq -h
ll
qtlseq

cd QTL-seq

qtlseq -h 
```
transfer snpseq raw files or qtlseq raw reads to  PDC dardel to make it safe:

```
less darsync_vinitha.out
cat darsync_vinitha.slurm
ll /proj/snic2021-23-442/delivery05638
ll /proj/snic2021-23-442/delivery05638/INBOX/UK-3126/220218_A00181_0431_AHN33MDSX2/
less -S /proj/snic2021-23-442/delivery05638/INBOX/UK-3126/220218_A00181_0431_AHN33MDSX2/SampleSheet.csv
ll /proj/snic2021-23-442/
ll snpseq
ll /proj/snic2021-23-442/
ll /proj/snic2021-23-442/snpseq/data/
du -sh /proj/snic2021-23-442/snpseq/data/
du -sh /proj/snic2021-23-442/delivery05638
cat darsync_vinitha.slurm
nano darsync_vinitha.slurm
ll /proj/snic2021-23-442/
nano darsync_vinitha_snp.slurm
ll
nano darsync_vinitha_snp.slurm
ll /home/abusiddi/id_ed25519_pdc
cat /home/abusiddi/id_ed25519_pdc
sbatch darsync_vinitha_snp.slurm
nano darsync_vinitha_snp.slurm
ll -lrth
jobinfo -u abusiddi
/proj/uppstore2018171/abu/vinitha_qtl/
ll /proj/uppstore2018171/abu/vinitha_qtl/
du -sh /proj/uppstore2018171/abu/vinitha_qtl/snpseq/
du -sh /proj/uppstore2018171/abu/vinitha_qtl/snpseq/data/
tree /proj/uppstore2018171/abu/vinitha_qtl/snpseq/data/
cat /proj/uppstore2018171/abu/vinitha_qtl/qtlseq_r2.err 
uquota
nano darsync_vinitha_snp.slurm
cat darsync_vinitha_snp.slurm
nano trsnsfer_qtlseq.sh
cat darsync_vinitha_snp.slurm
uquota
ll /proj/uppstore2018171/abu/vinitha_qtl/
projinfo
ll
less darsync_vinitha_snp.err
jobinfo -u abusiddi
ll .ssh/
ll .ssh/known_hosts 
ll .ssh/
less .ssh/known_hosts 
chmod 700 .ssh
ll .ssh/
ssh-keygen -t ed25519 -f ~/.ssh/id-ed25519-pdc
ssh -i ~/.ssh/id-ed25519-pdc <username-at-pdc>@dardel.pdc.kth.se
ssh -i ~/.ssh/id-ed25519-pdc absiddi@dardel.pdc.kth.se
less .ssh/id-ed25519-pdc.pub
ssh -i ~/.ssh/id-ed25519-pdc absiddi@dardel.pdc.kth.se
nano darsync_vinitha_snp.slurm
sbatch darsync_vinitha_snp.slurm
jobinfo -u abusiddi
ll -lrth 
cat darsync_vinitha_snp.err
ml
nano darsync_vinitha_snp.slurm
ml darsync
ml
sbatch darsync_vinitha_snp.slurm
jobinfo -u abusiddi
cat darsync_vinitha_snp.err
ml darsync
darsync check
ll /proj/snic2021-23-442/snpseq/
less /proj/snic2021-23-442/snpseq/darsync_snpseq.ownership.gz
uquota
ll /proj/uppstore2018171/abu/
cd /proj/uppstore2018171/abu/
mkdir vinitha_qtl
cd vinitha_qtl/
ll
pwd
nano qtlseq_transfer.sh
ll
ls qtlseq_transfer.sh 
nano qtlseq_transfer.sh
sbatch qtlseq_transfer.sh
jobinfo -u abusiddi
ll
ll -h snpseq/
less qtlseq.err
nano qtlseq_transfer.sh
less qtlseq.out
nano qtlseq_transfer.sh
sbatch qtlseq_transfer.sh
jobinfo -u abusiddi
scancel 47046886
nano qtlseq_transfer.sh
sbatch qtlseq_transfer.sh
jobinfo -u abusiddi

cat darsync_vinitha_snp.slurm 
ll /proj/snic2021-23-442/snpseq/ 
du -sh /proj/snic2021-23-442/snpseq/
cd /proj/uppstore2018171/abu/vinitha_qtl/
nano qtlseq_transfer.sh
  
sbatch qtlseq_transfer.sh
ll -lrth

cd /proj/uppstore2018171/abu/vinitha_qtl/
less qtlseq_r2.out
du -sh snpseq/

qtlseq

ml bioinfo-tools snpEff
 
nano qtlseq_transfer.sh
```
# 4. test run

```
cd /proj/uppstore2018171/abu/vinitha_qtl/
 
mkdir test_run
test_run/

git clone https://github.com/YuSugihara/QTL-seq.git

ll QTL-seq/
ll QTL-seq/test/
QTL-seq/test/qtlseq.sh 
nano  QTL-seq/test/qtlseq.sh 
cat ../qtlseq_transfer.sh 
nano  QTL-seq/test/qtlseq.sh 
nano  QTL-seq/test/qtlseq_test1.sh 
ll QTL-seq/test/
ll-h  QTL-seq/test/
ll -h QTL-seq/test/
```
## run 1
```
nano  QTL-seq/test/qtlseq_test1.sh 
cd QTL-seq/test/

sbatch qtlseq_test1.sh

jobinfo -u abusiddi

ll ../
tree test_1/
cat qtlseq_test1.sh 
less /proj/uppstore2018171/abu/vinitha_qtl/qtlseq_r2.err
less /proj/uppstore2018171/abu/vinitha_qtl/qtlseq_r2.out 
nano  QTL-seq/test/qtlseq_test1.sh 
nano qtlseq_test1.sh 

sbatch qtlseq_test1.sh
jobinfo -u abusiddi

cat qtlseq_r2.err
```
#### error, test run finished unsuccessfully, now run again
```
rm -r test_1

sbatch qtlseq_test1.sh
cat qtlseq_r1.out

tree test_1/
jobinfo -u abusiddi
```
#### error, run again
```
rm -r test_1
nano qtlseq_test1.sh 
sbatch qtlseq_test1.sh

jobinfo -u abusiddi
du -sh test_1/
du -sh ./
ll -h

tree ../../../snpseq/

less ../../../snpseq/data/files/WJ-3814/20240220_LH00179_0046_B22HWMNLT3/README.md 
less ../../../snpseq/data/files/WJ-3814/20240220_LH00179_0046_B22HWMNLT3/SampleSheet.csv 

ml bioinfo-tools snpEff trimmomatic bwa samtools bcftools

qtlseq

cd qtlseq_analysis/
ll
sbatch qtlseq_run1.sh
jobinfo -u abusiddi

less qtlseq_run2.err
less qtlseq_run2.out
less qtlseq_run1.out
```
#### run successfully, now real run with SB genome `EL10_2.2`, download the genome files  
```
gzip -dk Phytozome/PhytozomeV13/Bvulgarisssp_vulgaris/EL10.2_2/assembly/Bvulgarisssp_vulgaris_782_EL10.2.fa.gz 
gzip -d -k Phytozome/PhytozomeV13/Bvulgarisssp_vulgaris/EL10.2_2/assembly/Bvulgarisssp_vulgaris_782_EL10.2.fa.gz
gzip -dk Phytozome/PhytozomeV13/Bvulgarisssp_vulgaris/EL10.2_2/assembly/Bvulgarisssp_vulgaris_782_EL10.2.fa.gz .
cp Phytozome/PhytozomeV13/Bvulgarisssp_vulgaris/EL10.2_2/assembly/Bvulgarisssp_vulgaris_782_EL10.2.fa.gz .
ll -h
gunzip Bvulgarisssp_vulgaris_782_EL10.2.fa.gz
ll
ll -h
```
## run 2 & 3 
```
cd /proj/uppstore2018171/abu/vinitha_qtl/

mkdir qtlseq_analysis
cd qtlseq_analysis/

sbatch qtlseq_run2.sh
jobinfo -u abusiddi
ll qtlseq_analysis_run_2
jobinfo -u abusiddi
ll qtlseq_analysis_run_2
tree qtlseq_analysis_run_2
less qtlseq_run2.err
sbatch qtlseq_run3.sh
```


Download the SB genome from phytozome website
```
curl --cookie jgi_session=/api/sessions/07018f619c8c3de104b2e2c974653a90 --output download.20240520.130135.zip -d "{\"ids\":{\"Phytozome-782\":[\"6334df862de7c323533ed952\",\"6334df862de7c323533ed95c\",\"6334df862de7c323533ed956\",\"6334df872de7c323533ed970\",\"6334df872de7c323533ed96a\",\"6334df872de7c323533ed962\",\"6334df872de7c323533ed96c\",\"6334df862de7c323533ed95e\",\"6334df862de7c323533ed954\",\"6334df862de7c323533ed95a\",\"6334df872de7c323533ed966\",\"6334df872de7c323533ed968\",\"6334df862de7c323533ed958\",\"6334df872de7c323533ed964\",\"6334df872de7c323533ed960\",\"6334df872de7c323533ed972\",\"6334df872de7c323533ed96e\",\"6334df862de7c323533ed950\"]}}" -H "Content-Type: application/json" https://files-download.jgi.doe.gov/filedownload/

ll
unzip download.20240520.130135.zip
ll
tree Phytozome/
```
## run 4
```
cd /proj/uppstore2018171/abu/vinitha_qtl/qtlseq_analysis/
sbatch qtlseq_run4.sh 
less /proj/uppstore2018171/abu/vinitha_qtl/qtlseq_analysis/qtlseq_run4.err 
less /proj/uppstore2018171/abu/vinitha_qtl/qtlseq_analysis/qtlseq_run4.out 
cat /proj/uppstore2018171/abu/vinitha_qtl/qtlseq_analysis/qtlseq_analysis_run_4/log/alignment.log

tree /proj/uppstore2018171/abu/vinitha_qtl/qtlseq_analysis/qtlseq_analysis_run_4/
ll -h /proj/uppstore2018171/abu/vinitha_qtl/qtlseq_analysis/qtlseq_analysis_run_4/00_fastq/

```
future run with `--species Arabidopsis` to see if it works & `--mem ` option to run faster

## run5


run `qtlseq_run5.sh` shown `shell_script` directory

```
cd /proj/uppstore2018171/abu/vinitha_qtl/qtlseq_analysis

sbatch qtlseq_run5.sh
```
to check the results:
```
tree /proj/uppstore2018171/abu/vinitha_qtl/qtlseq_analysis/qtlseq_analysis_run_5
```

It is finished successfully, now do seat with your `qtlseq` results and evaluate:
`/proj/uppstore2018171/abu/vinitha_qtl/qtlseq_analysis/qtlseq_analysis_run_5/40_qtlseq`
