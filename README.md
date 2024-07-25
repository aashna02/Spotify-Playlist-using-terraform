# Spotify-Playlist-using-terraform
  ## Description
  The project demonstrates the use of terraform's infrastructure as code feature.Terraform has been used with an external service which is spotify to create playlists.It 
  showcases how IaC principles can extend beyond traditional cloud infrastructure to include API-driven services.
  The name of the artist and limit of songs to be retrieved can be set and then you can create a playlist containing random songs of that artist.
  ## Prerequisites
1. Terraform 
2. Docker
3. Spotify Account
4. Spotify developer account
5. VS code

  ## Steps
  1. The first and foremost step is to create a folder in vs code. Create a file name provider.tf.
  2. Go to terraform providers website and search for spotify.Use the provider details and paste those in your provider.tf file.
  3. In provider block write api_key and add this api key once the following steps are executed to obtain the key.
  4. Create a spotify for developer account if you already dont have one. Click on create app.
  5. Define the app name,description and "http://localhost:27228/spotify_callback" in redirect url.
  6. As you click on save, client id and client secret will be generated. Add them to the .env file in vs code.
  7. These id's will help in connecting spotify and terraform using the api key.
  8. Run" docker run --rm -it -p 27228:27228 --env-file .env ghcr.io/conradludgate/spotify-auth-proxy " to run the docker container of the given docker image and pass the env variables to the container.
  9. This in turn generates the api key and a link. Click on the link and ok. "authorization successful" message will be displayed on screen.
  10. Now copy the api key to terraform.tfvars file and specify the name in provider.tf file and type in variables.tf file.
  11. Create a playlist.tf file. Here write the resource block. Follow the file to see how the data block has been used to avoid entering the track id of song everytime.
  12. In the terminal run terraform init, terraform plan and terraform apply commands to successfully create the desired playlist.

  
